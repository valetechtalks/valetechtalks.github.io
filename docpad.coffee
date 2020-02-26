axios = require('axios')

MEETUP_PAST_EVENTS_URL = 'https://api.meetup.com/valetechtalks/events\
  ?sign=true\
  &photo-host=public\
  &page=20\
  &fields=featured_photo\
  &desc=true\
  &status=past'

docpadConfig =
  prompts: false

  # ===============
  # Plugin configuration
  plugins:
    ghpages:
      deployBranch: 'master'

  # ===============
  # These are variables will be accessible via our templates
  templateData:
    # Conference info
    conf:
      name: 'Vale Tech Talks'
      description: 'Meetup de Profissionais e Estudantes de TI do Vale do Rio dos Sinos'
      # date: '14/Abril de 2018'
      # If your event is free, just comment this line
      # price: '$100',
      venue: 'Vale dos Sinos, RS, Brazil'
      # address: 'Av. Mauá, 1120'
      # city: 'Sapiranga'
      # state: 'RS'
      # complement: 'Auditório do ginásio'

    # The Call To Action button at the header,
    # If you don't want this, just remove the callToAction property.
    # callToAction:
    #   text: 'Confirme sua presença'
    #   link: 'https://www.meetup.com/ValleyOfDevelopers/events/248813160/'

    # 'Fork me on GitHub', if you don't want this,
    # just remove the forkButton property
    # forkButton:
    #   repository: 'https://github.com/valleyofdevelopers/valleyofdevelopers.github.io'

    # Site info
    site:
      theme: 'yellow-swan'
      url: 'https://valetechtalks.github.io'
      googleanalytics: 'UA-104968748-1'
      googleMapsApiKey: 'AIzaSyA2RQp4qEQfzRBgj6oyaa70uDp7nnIARUg'

    # Active sections on the website
    # to deactivate comment out with '//'
    # you can also change order here and it will reflect on page
    sections: [
      'about'
      # 'location'
      # 'speakers'
      # 'schedule'
      # 'callforpapers'
      # 'sponsors'
      'partners'
      'contact'
    ]

    # Labels which you can translate to other languages
    labels:
      about: 'Sobre'
      location: 'Localização'
      speakers: 'Palestrantes'
      schedule: 'Programação'
      callforpapers: 'Chamada para Trabalhos'
      sponsors: 'Patrocinadores'
      partners: 'Apoio'
      contact: 'Contato'

    # The entire schedule
    schedule: [
      name: 'Romulo Alves',
      email: 'me@romuloalv.es',
      photo: 'themes/yellow-swan/img/romulo.jpeg',
      bio: 'Engenheiro de Software na PLING, desenvolvendo soluções web de ponta à ponta com JavaScript.',
      company: 'Pling',
      link:
        href: 'https://romuloalv.es/',
        text: 'Website'
      presentation:
        title: 'Como fazer uma webapp carregar em até 3 segundos',
        description: 'Como desenvolver uma webapp capaz de carregar em três segundos utilizando Server-side rendering com Next.js e Preact.',
        date: 'Sábado, 14 de Abril de 2018',
        time: '14:30'
    ,
      name: 'Paulo Diovani',
      email: 'paulo@diovani.com',
      photo: 'https://www.gravatar.com/avatar/eeb1ef7b3ac88503c8189fbecd369387?size=120',
      bio: 'Tecnólogo em Sistemas para Internet pela Universidade Feevale e Desenvolvedor na Codeminer 42. Usuário GNU/Linux desde 2005 e entusiasta de tecnologias Open Source.',
      company: 'Codeminer 42',
      link:
        href: 'https://github.com/paulodiovani',
        text: 'Github'
      presentation:
        title: 'Working abroad',
        description: 'Paulo Diovani conta sua experiência indo à trabalho para o exterior pela primeira vez. Em Phoenix, Arizona, que dificuldades encontramos na cultura local e na forma como os norte americanos trabalham? Esta talk mostra alguns requisitos para trabalhar no exterior e como é a experiência de quem o faz. Seja você um nômade virtual, um freelancer ou esteja procurando oportunidades fora do país, será presenteado com uma visão de com é trabalhar nos Estados Unidos.',
        date: 'Sábado, 14 de Abril de 2018',
        time: '15:30'
    ,
      name: 'Morvana Bonin',
      email: 'morvanabonin@gmail.com',
      photo: 'themes/yellow-swan/img/morvana.jpeg',
      bio: 'Analista de Desenvolvimento na empresa KingHost, estudante de Análise e Desenvolvimento de Sistemas (ADS) pela Faculdade Senac Porto Alegre, fundadora e uma das coordenadores do Meetup Microservices de Poa e entusiasta de Machine Learning.',
      company: 'KingHost',
      link:
        href: 'https://www.linkedin.com/in/morvana-bonin',
        text: 'Linkedin'
      presentation:
        title: 'Introdução a Machine Learning',
        description: 'Será abordado o inicial do que é Machine Learning, Aprendizagem Supervisionada, Aprendizagem Não Supervisionada e Aprendizagem por Reforço.',
        date: 'Sábado, 14 de Abril de 2018',
        time: '16:15'
    ]

    # Call for Papers info
    # callforpapers:
      # url: 'https://goo.gl/forms/Jyeqyrd1dwi2w3752'

    # List of Sponsors
    sponsors: [
      # name: 'Seja um patrocinador'
      # logo: 'themes/yellow-swan/img/seja-um-patrocinador.jpg'
    ]

    # List of Partners
    partners: [
      name: 'Codeminer 42'
      logo: 'themes/yellow-swan/img/codeminer42.jpg'
      url: 'http://codeminer42.com'
    ,
      name: 'Escola Duque de Caxias'
      logo: 'themes/yellow-swan/img/duque.png'
      url: 'http://www.duque.g12.br/'
    ]

    contacts: [
      name: 'Paulo Diovani'
      email: 'paulo@diovani.com'
    ,
      name: 'Rodrigo Boniatti'
      email: 'boniatti.rodrigo@gmail.com'
    ]

    # -----------------------------
    # Helper Functions

    # Theme path
    getTheme: ->
      'themes/' + @site.theme

    # Site Path
    getUrl: ->
      @site.url

  # ===============
  # Events
  events:
    extendTemplateData: (opts, next)->
      # fetch meetup events
      axios.get MEETUP_PAST_EVENTS_URL
        .then (res) ->
          opts.templateData.pastEvents = res.data
          next()
        .catch next

module.exports = docpadConfig
