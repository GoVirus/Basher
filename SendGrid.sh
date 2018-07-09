curl -s --user 'api:key-124b9752794051ae14ece55d1a1ee1fe' \
    https://api.mailgun.net/v3/app.domain.com/messages \
    -F from='Excited User <mailgun@domain.com>' \
    -F to=support@domain.com \
    -F to=ml89281@outlook.com \
    -F subject='Hello' \
    -F text='Testing some Mailgun awesomeness!'