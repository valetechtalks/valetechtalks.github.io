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
      date: '30 de agosto de 2025'
      # If your event is free, just comment this line
      # price: '$100',
      venue: 'Universidade Feevale, Vale do Sinos, RS, Brazil'
      address: 'RS-239, 2755'
      city: 'Novo Hamburgo'
      state: 'RS'
      complement: 'Salão de Exposições do Prédio Arenito'

    # The Call To Action button at the header,
    # If you don't want this, just remove the callToAction property.
    callToAction:
      text: 'Confirme sua presença'
      link: 'https://www.meetup.com/valetechtalks/events/310538875/'

    # 'Fork me on GitHub', if you don't want this,
    # just remove the forkButton property
    # forkButton:
    #   repository: 'https://github.com/valetechtalks/valetechtalks.github.io'

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
      name: 'Recepção e café ☕',
      time: '09:00'
    ,

      name: 'Vinícius Almeida',
      # email: '',
      photo: 'themes/yellow-swan/img/vinicius_almeida.jpeg',
      bio: 'Engenheiro de software com 15+ anos de atuação em desenvolvimento de sistemas em empresas de vários tamanhos, hoje focado na indústria de serviços financeiros.',
      company: 'Staff software engineer',
      link:
        href: 'https://www.linkedin.com/in/vin%C3%ADcius-almeida-42591523/',
        text: 'LinkedIn'
      presentation:
        title: 'Event sourcing',
        description: '',
        time: '09:15'
    ,

      name: 'Lucas Riboli',
      # email: '',
      photo: 'themes/yellow-swan/img/lucas_riboli.png',
      bio: 'Lucas Riboli é desenvolvedor de software especializado em backend e infraestrutura em nuvem. Atua na criação de sistemas escaláveis combinando habilidades em ambientes distribuídos.',
      company: 'Banco BV',
      link:
        href: 'https://www.linkedin.com/in/lucas-riboli/',
        text: 'LinkedIn'
      presentation:
        title: 'Operadores: do Kubernetes para qualquer infraestrutura',
        description: 'O pattern Operator não é totalmente exclusividade do Kubernetes. Vamos ver um operator usando Linux primitivos, demonstrando que esse conceito de IaC reativa funciona em qualquer infraestrutura, além de entender como operators funcionam no K8s.',
        # date: '2025-04-12',
        time: '10:05'

    ,
      name: 'Tjeimi Kiewel',
      photo: 'themes/yellow-swan/img/tjeimi_kiewel.jpeg',
      bio: 'Tjeimi Kiewel é Analista de Sistemas na Agilework Informática, empresa especializada em tecnologias para gestão em medicina e saúde ocupacional. Com formação em Biologia e Análise e Desenvolvimento de Sistemas pela Universidade Feevale, atua na interseção entre tecnologia e experiência do usuário. É mestre em Qualidade Ambiental pela mesma instituição e está se especializando em UX Design pela PUCRS. Atualmente desenvolve projeto de doutorado em Antropologia Digital, com foco em algoritmos, UX e inclusão.',
      company: 'Agilework Informática',
      presentation:
        title: 'Roda de Conversa sobre Transição de Carreira',
        description: '',
        # date: '2025-04-12',
        time: '10:55'

    ,
      name: 'Matheus Martini',
      photo: 'themes/yellow-swan/img/matheus_martini.jpeg',
      bio: 'Engenheiro de Software Sênior especializado em soluções financeiras móveis e integrações com POS, com histórico de impacto em aplicações de grande escala para bancos, restaurantes e grandes eventos de tecnologia. Engenheiro Civil / Analista de Desenvolvimento de Sistemas / Mestre em Processos Industriais / Doutorando em Qualidade Ambiental com tese em Inteligência Artificial.',
      link:
        href: 'https://www.linkedin.com/in/martinimatheus/',
        text: 'LinkedIn'
      presentation:
        title: 'Roda de Conversa sobre Transição de Carreira',
        description: '',
        # date: '2025-04-12',
        time: '10:55'

    ,
      name: 'Jade Oliveira',
      photo: 'themes/yellow-swan/img/jade_oliveira.jpeg',
      bio: 'Desenvolvedora mobile formada pela Unisinos em Análise e Desenvolvimento de Sistemas e pela UFRGS em Ciências Contábeis, com 4 anos de experiência na área de TI e 9 anos de experiência na área Contábil. Atualmente trabalha como Desenvolvedora Mobile Pleno na ClickBus, empresa brasileira especializada na venda online de passagens de ônibus.',
      company: 'ClickBus',
      link:
        href: 'https://www.linkedin.com/in/jade-g-oliveira/',
        text: 'LinkedIn'
      presentation:
        title: 'Roda de Conversa sobre Transição de Carreira',
        description: '',
        # date: '2025-04-12',
        time: '10:55'

    #,
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
      name: 'Universidade Feevale'
      logo: 'themes/yellow-swan/img/feevale.jpg'
      url: 'https://www.feevale.br'
    # ,
    #   name: ''
    #   logo: ''
    ]

    # List of Partners
    partners: [
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