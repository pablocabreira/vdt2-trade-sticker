*** Settings ***
Documentation        Login tests

Resource             ../resources/main.resource

Test Setup           Start Test
Test Teardown        Finish Test

*** Test Cases ***
Deve logar com sucesso
    Go To Login Page
    Fill Credentials    papito@gmail.com    vaibrasil
    Submit Credentials
    User Logged In

Não deve logar com senha inválida
    Go To Login Page
    Fill Credentials    papito@gmail.com    abc123
    Submit Credentials
    Toast Message Should Be    Credenciais inválidas, tente novamente!

Deve informar a obrigatoriedade das credenciais
    Go To Login Page
    Submit Credentials
    Toast Message Should Be    Por favor, informe suas credenciais!

Deve informar obrigatoriedade do campo senha
    Go To Login Page
    Fill Credentials    papito@gmail.com    ${EMPTY}
    Submit Credentials
    Toast Message Should Be    Por favor, informe a sua senha secreta!

Deve informar obrigatoriedade do campo e-mail
    Go To Login Page
    Fill Credentials    ${EMPTY}             123
    Submit Credentials
    Toast Message Should Be    Por favor, informe o seu email!