local Translations = {

    client = {
        lang_1 = 'Open ',
        lang_2 = 'Fast Travel Menu',
    },

    server = {
        lang_1 = 'Not Enough Cash!',
        lang_2 = 'not enough cash for this trip you need $',
    },

}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})

-- Lang:t('client.lang_1')
-- Lang:t('server.lang_1')
