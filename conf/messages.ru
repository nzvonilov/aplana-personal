# Override default Play's validation messages

# --- Constraints
constraint.required=Обязательное
constraint.min=Minimum value: {0}
constraint.max=Maximum value: {0}
constraint.minLength=Минимум символов: {0}
constraint.maxLength=Maximum length: {0}
constraint.email=Email

# --- Formats
format.date=Date (''{0}'')
format.numeric=Numeric
format.real=Real

# --- Errors
error.invalid=Invalid value
error.required=Это поле обязательное
error.number=Numeric value expected
error.real=Real number value expected
error.min=Must be greater or equal to {0}
error.max=Must be less or equal to {0}
error.minLength=Минимум символов {0}
error.maxLength=Максимум символов {0}
error.email=Некорректный e-mail
error.pattern=Must satisfy {0}

### --- play-authenticate START

# play-authenticate: Initial translations

playauthenticate.accounts.link.success=Account linked successfully
playauthenticate.accounts.merge.success=Accounts merged successfully

playauthenticate.verify_email.error.already_validated=Your e-mail has already been validated.
playauthenticate.verify_email.error.set_email_first=You need to set an e-mail address first.
playauthenticate.verify_email.message.instructions_sent=Instructions on how to verify your e-mail address have been sent to {0}.
playauthenticate.verify_email.success=E-mail address ({0}) successfully verified.

playauthenticate.reset_password.message.instructions_sent=Instructions on how to reset your password have been sent to {0}.
playauthenticate.reset_password.message.email_not_verified=Your account has not been verified, yet. An e-mail including instructions on how to verify it has been sent out. Retry resetting your password afterwards.
playauthenticate.reset_password.message.no_password_account=Your user has not yet been set up for password usage.
playauthenticate.reset_password.message.success.auto_login=Your password has been reset.
playauthenticate.reset_password.message.success.manual_login=Your password has been reset. Please now log in using your new password.

playauthenticate.change_password.error.passwords_not_same=Пароли не совпадают.
playauthenticate.change_password.success=Password has been changed successfully.

playauthenticate.password.signup.error.passwords_not_same=Пароли не совпадают.
playauthenticate.password.login.unknown_user_or_pw=Неверный логин или пароль.

playauthenticate.password.verify_signup.subject=PlayAuthenticate: Complete your signup
playauthenticate.password.verify_email.subject=PlayAuthenticate: Confirm your e-mail address
playauthenticate.password.reset_email.subject=PlayAuthenticate: How to reset your password

# play-authenticate: Additional translations

playauthenticate.login.email.placeholder=Ваш e-mail
playauthenticate.login.password.placeholder=Choose a password
playauthenticate.login.password.repeat=Повторите пароль
playauthenticate.login.title=Авторизация
playauthenticate.login.password.placeholder=Пароль
playauthenticate.login.now=Вход
playauthenticate.login.forgot.password=Забыли пароль?
playauthenticate.login.oauth=or log in using one of the following providers:
playauthenticate.login.basic=or try HTTP basic auth (as example/secret)

playauthenticate.signup.title=Регистрация
playauthenticate.signup.name=Ваше имя
playauthenticate.signup.now=Зарегистрироваться
playauthenticate.signup.oauth=or sign up using one of the following providers:

playauthenticate.verify.account.title=E-mail verification required
playauthenticate.verify.account.before=Before setting a password, you need to
playauthenticate.verify.account.first=first verify your e-mail address

playauthenticate.change.password.title=Смена пароля
playauthenticate.change.password.cta=Изменить

playauthenticate.merge.accounts.title=Merge accounts
playauthenticate.merge.accounts.question=Do you want to merge your current account ({0}) with this account: {1}?
playauthenticate.merge.accounts.true=Yes, merge these two accounts
playauthenticate.merge.accounts.false=No, exit my current session and log in as a new user
playauthenticate.merge.accounts.ok=OK

playauthenticate.link.account.title=Link account
playauthenticate.link.account.question=Link ({0}) with your user?
playauthenticate.link.account.true=Yes, link this account
playauthenticate.link.account.false=No, log out and create a new user with this account
playauthenticate.link.account.ok=OK

# play-authenticate: Signup folder translations

playauthenticate.verify.email.title=Проверьте вашу электронную почту
playauthenticate.verify.email.requirement=Прежде чем авторизоваться вам необходимо подтвердить ваш email.
playauthenticate.verify.email.cta=Для этого необходимо перейти по ссылке отправленной в письме на ваш email.

playauthenticate.password.reset.title=Reset password
playauthenticate.password.reset.cta=Reset my password

playauthenticate.password.forgot.title=Forgot password
playauthenticate.password.forgot.cta=Send reset instructions

playauthenticate.oauth.access.denied.title=OAuth access denied
playauthenticate.oauth.access.denied.explanation=If you want to use PlayAuthenticate with OAuth, you must accept the connection.
playauthenticate.oauth.access.denied.alternative=If you rather not like to do this, you can also
playauthenticate.oauth.access.denied.alternative.cta=sign up with a username and password instead

playauthenticate.token.error.title=Token error
playauthenticate.token.error.message=The given token has either expired or does not exist.

playauthenticate.user.exists.title=User exists
playauthenticate.user.exists.message=This user already exists.

# play-authenticate: Navigation
playauthenticate.navigation.profile=Профиль
playauthenticate.navigation.link_more=Link more providers
playauthenticate.navigation.logout=Выход
playauthenticate.navigation.login=Авторизация
playauthenticate.navigation.home=Home
playauthenticate.navigation.restricted=Restricted page
playauthenticate.navigation.signup=Регистрация

# play-authenticate: Handler
playauthenticate.handler.loginfirst=Необходимо авторизоваться

# play-authenticate: Profile
playauthenticate.profile.title=Профиль
playauthenticate.profile.mail=Ваше имя {0} , ваш email {1}!
playauthenticate.profile.unverified=unverified - click to verify
playauthenticate.profile.verified=verified
playauthenticate.profile.providers_many=There are {0} providers linked with your account:
playauthenticate.profile.providers_one = There is one provider linked with your account:
playauthenticate.profile.logged=You are currently logged in with:
playauthenticate.profile.session=Your user ID is {0} and your session will expire on {1}
playauthenticate.profile.session_endless=Your user ID is {0} and your session will not expire, as it is endless
playauthenticate.profile.password_change=Изменить пароль

# play-authenticate - sample: Index page
playauthenticate.index.title=Welcome to Play Authenticate
playauthenticate.index.intro=Play Authenticate sample app
playauthenticate.index.intro_2=This is a template for a simple application with authentication.
playauthenticate.index.intro_3=Check the main navigation above for simple page examples including supported authentication features.
playauthenticate.index.heading=Heading
playauthenticate.index.details=View details

# play-authenticate - sample: Restricted page
playauthenticate.restricted.secrets=Secrets, everywhere!

# play-authenticate - sample: lesson_form page
playauthenticate.lesson.success=Поздравляем! Вы успешно справились с заданием.
playauthenticate.lesson.compile.error=Во время компиляции произошли ошибки:
playauthenticate.lesson.try.count=5

# play-authenticate - sample: index, navigate
playauthenticate.navigate.block.lesson=5
playauthenticate.navigate.title.intro=Введение
playauthenticate.navigate.title.lesson=Урок {0}
playauthenticate.navigate.title.resources=Ресурсы
playauthenticate.navigate.description.inro=Язык программирования Java
playauthenticate.navigate.description.resources=Используемые ресурсы при подготовке курса
playauthenticate.navigate.description.lesson.1=Установка Java
playauthenticate.navigate.description.lesson.2=Первая программа на Java
playauthenticate.navigate.description.lesson.3=Установка среды разработки
playauthenticate.navigate.description.lesson.4=Комментарии в Java
playauthenticate.navigate.description.lesson.5=Примитивные типы данных
playauthenticate.navigate.url.lesson.1=/install
playauthenticate.navigate.url.lesson.2=/hello_world
playauthenticate.navigate.url.lesson.3=/undefined
playauthenticate.navigate.url.lesson.4=/commented
playauthenticate.navigate.url.lesson.5=/types

### --- play-authenticate END
