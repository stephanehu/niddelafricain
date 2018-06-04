/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validator;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Stephane
 */
public class Validator {

    // ensures that quantity input is number between 0 and 99
    // applies to quantity fields in cart page
    public boolean validateQuantity(String productId, String quantity) {

        boolean errorFlag = false;

        if (!productId.isEmpty() && !quantity.isEmpty()) {

            int i = -1;

            try {

                i = Integer.parseInt(quantity);
            } catch (NumberFormatException nfe) {

                System.out.println("User did not enter a number in the quantity field");
            }

            if (i < 0 || i > 99) {

                errorFlag = true;
            }
        }

        return errorFlag;
    }

    // performs simple validation on checkout form
    public boolean validateCheckoutForm(String name,
            String lastname,
            String email,
            String phone,
            String address,
            String password,
            String ccNumber,
            HttpServletRequest request) {

        boolean errorFlag = false;
        boolean firstnameError;
        boolean lastnameError;
        boolean emailError;
        boolean phoneError;
        boolean addressError;
        boolean passwordError;
        boolean ccNumberError;

        return errorFlag;
    }

    public boolean validateLoginForm(String email,
            String password, HttpServletRequest request) {
        boolean errorloginFlag = false;

        boolean emailidError;
        boolean psswordError;

        if (email == null
                || email.equals("")
                || !email.contains("@")
                || !email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            errorloginFlag = true;
            emailidError = true;
            request.setAttribute("emailidError", emailidError);
        }

        if (password == null
                || password.equals("")
                || password.length() > 15) {
            errorloginFlag = true;
            psswordError = true;
            request.setAttribute("psswordError", psswordError);
        }

        return errorloginFlag;
    }

    public boolean validateRegisterForm(String firstname,
            String lastname,
            String email,
            String phone,
            double salary,
            String password,
            String confirm,
            HttpServletRequest request) {
        boolean firstnameError;
        boolean lastnameError;
        boolean emailError;
        boolean phoneError;
        boolean addressError;
        boolean passwordError;
        boolean confirmError;

        boolean errorFlag = false;
        if (firstname == null
                || firstname.equals("")
                || firstname.length() > 45) {
            errorFlag = true;
            firstnameError = true;
            request.setAttribute("firstnameError", firstnameError);
        }

        if (lastname == null
                || lastname.equals("")
                || lastname.length() > 90) {
            errorFlag = true;
            lastnameError = true;
            request.setAttribute("lastnameError", lastnameError);
        }

        if (email == null
                || email.equals("")
                || !email.contains("@")
                || !email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            errorFlag = true;
            emailError = true;
            request.setAttribute("emailError", emailError);
        }
        if (phone == null
                || phone.equals("")
                || phone.matches("(\\d-)?(\\d{3}-)?\\d{3}-\\d{4}")) {
            errorFlag = true;
            phoneError = true;
            request.setAttribute("phoneError", phoneError);
        }
        if (salary == 0
                || salary < 0) {
            errorFlag = true;
            addressError = true;
            request.setAttribute("salaryError", addressError);
        }

        if (password == null
                || password.equals("")
                || password.length() > 15) {
            errorFlag = true;
            passwordError = true;
            request.setAttribute("passwordError", passwordError);
        }

        if (confirm == null
                || !confirm.equals(password)) {
            errorFlag = true;
            confirmError = true;
            request.setAttribute("confirmError", confirmError);
        }

        return errorFlag;
    }

    public boolean validateUpdateForm(String firstname,
            String lastname,
            String email,
            String phone,
            String address,
            String password,
            HttpServletRequest request) {
        boolean firstnameError;
        boolean lastnameError;
        boolean emailError;
        boolean phoneError;
        boolean addressError;
        boolean passwordError;

        boolean errorFlag = false;
        if (firstname == null
                || firstname.equals("")
                || firstname.length() > 45) {
            errorFlag = true;
            firstnameError = true;
            request.setAttribute("firstnameError", firstnameError);
        }

        if (lastname == null
                || lastname.equals("")
                || lastname.length() > 90) {
            errorFlag = true;
            lastnameError = true;
            request.setAttribute("lastnameError", lastnameError);
        }

        if (email == null
                || email.equals("")
                || !email.contains("@")
                || !email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            errorFlag = true;
            emailError = true;
            request.setAttribute("emailError", emailError);
        }
        if (phone == null
                || phone.equals("")
                || phone.matches("(\\d-)?(\\d{3}-)?\\d{3}-\\d{4}")) {
            errorFlag = true;
            phoneError = true;
            request.setAttribute("phoneError", phoneError);
        }
        if (address == null
                || address.equals("")
                || address.length() > 130) {
            errorFlag = true;
            addressError = true;
            request.setAttribute("addressError", addressError);
        }

        if (password == null
                || password.equals("")
                || password.length() > 15) {
            errorFlag = true;
            passwordError = true;
            request.setAttribute("passwordError", passwordError);
        }

        return errorFlag;
    }

    public boolean validateAgentRegisterForm(String name, String officeName, String email, String phone, String info, String EmailOffice, String AddressOffice, String landLineOffice, HttpServletRequest request) {

        boolean firstnameError;
        boolean officenameError;
        boolean emailError;
         boolean officeemailError;
        boolean phoneError;
        boolean addressError;
        boolean infoError;
        boolean landlineError;

        boolean errorFlag = false;
        if (name == null
                || name.equals("")
                || name.length() > 45) {
            errorFlag = true;
            firstnameError = true;
            request.setAttribute("nameError", firstnameError);
        }

        if (officeName == null
                || officeName.equals("")
                || officeName.length() > 90) {
            errorFlag = true;
            officenameError = true;
            request.setAttribute("officenameError", officenameError);
        }

        if (email == null
                || email.equals("")
                || !email.contains("@")
                || !email.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            errorFlag = true;
            emailError = true;
            request.setAttribute("emailError", emailError);
        }
         if (EmailOffice == null
                || EmailOffice.equals("")
                || !EmailOffice.contains("@")
                || !EmailOffice.matches("^[A-Za-z0-9+_.-]+@(.+)$")) {
            errorFlag = true;
            officeemailError = true;
            request.setAttribute("emailofficelError", officeemailError);
        }
        if (phone == null
                || phone.equals("")
                || phone.matches("(\\d-)?(\\d{3}-)?\\d{3}-\\d{4}")) {
            errorFlag = true;
            phoneError = true;
            request.setAttribute("phoneError", phoneError);
        }
        if (landLineOffice == null
                || landLineOffice.equals("")
                || landLineOffice.matches("(\\d-)?(\\d{3}-)?\\d{3}-\\d{4}")) {
            errorFlag = true;
            landlineError = true;
            request.setAttribute("landlineError", landlineError);
        }
        if (AddressOffice == null
                || AddressOffice.equals("")
                || AddressOffice.length() > 130) {
            errorFlag = true;
            addressError = true;
            request.setAttribute("addressError", addressError);
        }

        if (info == null
                || info.equals("")
                || info.length() > 700) {
            errorFlag = true;
            infoError = true;
            request.setAttribute("infoError", infoError);
        }

        return errorFlag;
    }

    public boolean validatePropertyForm(String propertyName, String bathroom, String bedroom, String builtup, String age, String address, String plotarea, String price, HttpServletRequest request) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
