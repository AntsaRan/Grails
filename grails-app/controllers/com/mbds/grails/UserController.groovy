package com.mbds.grails

import grails.plugin.springsecurity.annotation.Secured
import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

@Secured('ROLE_ADMIN')
class UserController {

    UserService userService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]
    @Secured(['ROLE_ADMIN','ROLE_MODO'])
    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond userService.list(params), model:[userCount: userService.count(), userList: userService.list()]
    }
    @Secured(['ROLE_ADMIN','ROLE_MODO'])
    def show(Long id) {
        def user = User.get(id)
        def userRole = UserRole.findByUser(user)
        def role = Role.get(userRole.roleId)
        respond userService.get(id), model:[role: role.authority,annonceCount:user.annonces.size()]
    }
    @Secured('ROLE_ADMIN')
    def create() {
        def roleList = Role.findAll();
        respond new User(params), model:[roleList: roleList]
    }
    @Secured('ROLE_ADMIN')
    def save(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
            def role = Role.findById(params.role)
            UserRole.create(user, role, true)
        } catch (ValidationException e) {
            respond user.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*' { respond user, [status: CREATED] }
        }
    }
    @Secured(['ROLE_ADMIN','ROLE_MODO'])
    def edit(Long id) {
        respond userService.get(id)
    }
    @Secured(['ROLE_ADMIN','ROLE_MODO'])
    def update(User user) {
        if (user == null) {
            notFound()
            return
        }

        try {
            userService.save(user)
        } catch (ValidationException e) {
            respond user.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), user.id])
                redirect user
            }
            '*'{ respond user, [status: OK] }
        }
    }
    @Secured('ROLE_ADMIN')
    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        userService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
