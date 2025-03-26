axios = require('axios')

# TODO: These urls are deprecated
# meetup.com now uses graphql and requires auth

MEETUP_UPCOMING_EVENTS_URL = 'https://api.meetup.com/valetechtalks/events\
  ?&sign=true\
  &photo-host=public\
  &page=1\
  &fields=featured_photo\
  &status=upcoming'

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
      date: '12 de Abril de 2025'
      # If your event is free, just comment this line
      # price: '$100',
      venue: 'Universidade Feevale, Vale dos Sinos, RS, Brazil'
      address: 'RS-239, 2755'
      city: 'Novo Hamburgo'
      state: 'RS'
      complement: 'Salão de Exposições do Prédio Arenito'

    # The Call To Action button at the header,
    # If you don't want this, just remove the callToAction property.
    # callToAction:
    #   text: 'Confirme sua presença'
    #   link: 'https://www.meetup.com/valetechtalks/events/268854460/'

    # 'Fork me on GitHub', if you don't want this,
    # just remove the forkButton property
    forkButton:
      repository: 'https://github.com/valetechtalks/valetechtalks.github.io'

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
      # 'upcoming' # use only when other sections are not ready
      'location'
      'speakers'
      'schedule'
      # 'callforpapers'
      'sponsors'
      'partners'
      'contact'
    ]

    # Labels which you can translate to other languages
    labels:
      about: 'Sobre'
      upcoming: 'Próximo Evento'
      location: 'Localização'
      speakers: 'Palestrantes'
      schedule: 'Programação'
      callforpapers: 'Chamada para Trabalhos'
      sponsors: 'Patrocinadores'
      partners: 'Apoio'
      # contact: 'Contato'

    # The entire schedule
    schedule: [
      name: 'Gabriel da Silva Simões',
      email: '',
      photo: '',
      bio: 'Doutor em Ciência da Computação, professor da Universidade Feevale e desenvolvedor de sistemas com foco em aplicações práticas de Inteligência Artificial. Atua na pesquisa e no desenvolvimento de soluções inovadoras que integram IA em diferentes contextos, aliando teoria e prática para transformar tecnologias emergentes em produtos e serviços reais.',
      company: '',
      link:
        href: '',
        text: 'Website'
      presentation:
        title: 'Dos Perceptrons à IA Multimodal: Como avanços científicos estão moldando o futuro',
        description: 'Como os principais avanços da IA impulsionaram o progresso da inteligência artificial. Um papo sobre as inovações que estão por trás de produtos reais, como assistentes inteligentes, ferramentas criativas e sistemas que combinam texto, imagem e muito mais',
        date: '2025-04-12',
        time: '09:00'
    ,
      name: 'Rodrigo Boniatti',
      email: '',
      photo: '',
      bio: '',
      company: '',
      link:
        href: '',
        text: 'Website'
      presentation:
        title: 'Evolução do desenvolvimento web. Um apanhado geral, cobrindo onde chegamos e como chegamos',
        description: '',
        date: '2025-04-12',
        time: '09:45'
    # ,
    ,
      name: '',
      email: '',
      photo: '',
      bio: '',
      company: '',
      link:
        href: '',
        text: 'Website'
      presentation:
        title: '',
        description: '',
        date: '',
        time: ''
    ,
      name: '',
      email: '',
      photo: '',
      bio: '',
      company: '',
      link:
        href: '',
        text: 'Website'
      presentation:
        title: '',
        description: '',
        date: '',
        time: ''
    #   name: '',
    #   email: '',
    #   photo: '',
    #   bio: '',
    #   company: '',
    #   link:
    #     href: '',
    #     text: 'Website'
    #   presentation:
    #     title: '',
    #     description: '',
    #     date: '',
    #     time: ''
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
      name: 'Universidade Feevale'
      logo: 'themes/yellow-swan/img/feevale.jpg'
      url: 'https://www.feevale.br'
    ,
      name: 'Diretório Acadêmico da Computação'
      logo: 'themes/yellow-swan/img/dac-feevale.jpg'
      url: 'https://www.facebook.com/feevaledac/'
    ]

    contacts: [
      name: 'Paulo Diovani'
      # email: ''
    ,
      name: 'Rodrigo Boniatti'
      # email: ''
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
      # Promise.all([
      #   axios.get(MEETUP_UPCOMING_EVENTS_URL),
      #   axios.get(MEETUP_PAST_EVENTS_URL)
      # ])
      #   .then ([resUpcoming, resPast]) ->
      #     opts.templateData.upcomingEvent = resUpcoming.data[0] if resUpcoming.data.length > 0
      #     opts.templateData.pastEvents = resPast.data
      #     next()
      #   .catch next

      opts.templateData.upcomingEvent = {}
      opts.templateData.pastEvents = []
      next()

module.exports = docpadConfig