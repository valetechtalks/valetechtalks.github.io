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
    callToAction:
      text: 'Confirme sua presença'
      link: 'https://www.meetup.com/valetechtalks/events/306961928/'

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
      # email: '',
      photo: 'themes/yellow-swan/img/gabriel_simoes.jpg',
      bio: 'Doutor em Ciência da Computação, professor da Universidade Feevale e desenvolvedor de sistemas com foco em aplicações práticas de Inteligência Artificial. Atua na pesquisa e no desenvolvimento de soluções inovadoras que integram IA em diferentes contextos, aliando teoria e prática para transformar tecnologias emergentes em produtos e serviços reais.',
      company: 'Universidade Feevale',
      presentation:
        title: 'Dos Perceptrons à IA Multimodal: Como avanços científicos estão moldando o futuro',
        description: 'Como os principais avanços da IA impulsionaram o progresso da inteligência artificial. Um papo sobre as inovações que estão por trás de produtos reais, como assistentes inteligentes, ferramentas criativas e sistemas que combinam texto, imagem e muito mais',
        date: '2025-04-12',
        time: '09:15'
    ,
      name: 'Rodrigo Boniatti',
      # email: '',
      photo: 'themes/yellow-swan/img/rodrigo_boniatti.jpg',
      bio: 'Formado em Sistemas para Internet, pela Universidade Feevale, Rodrigo trabalha com tecnologia há mais de uma década. Hoje atua como VP de Engenharia na Vanta, startup americana que fornece soluções de esports para escolas e organizações.',
      company: 'Vanta',
      link:
        href: 'https://www.linkedin.com/in/rodrigoboniatti',
        text: 'LinkedIn'
      presentation:
        title: 'Desafios da Web Moderna e os caminhos que nos trouxeram até aqui',
        description: 'Atualmente, criar aplicações web ficou mais fácil e prático, mas, ao mesmo tempo, foi tomado por uma crescente complexidade de ferramentas e requisitos. Com a evolução dos dispositivos e o aumento das expectativas dos usuários, tornou-se crucial que as páginas ofereçam rapidez, acessibilidade e responsividade. Nesta apresentação, vou explorar como cada ferramenta surgiu para resolver desafios específicos e os novos problemas que elas introduziram no processo.',
        date: '2025-04-12',
        time: '10:05'

    ,
      name: 'Luiz Eduardo Gallas',
      photo: 'themes/yellow-swan/img/luiz_gallas.jpg',
      bio: 'Luiz Eduardo Gallas é bacharel em Ciência da Computação pela Universidade Feevale e desenvolvedor Front-end Web e Mobile com seis anos de experiência, incluindo três no exterior. Atualmente, atua no desenvolvimento web na GoDaddy, uma provedora global de domínios e serviços de hospedagem com sede nos EUA.',
      company: 'GoDaddy',
      presentation:
        title: 'Roda de Conversa sobre trabalho no exterior',
        description: '',
        date: '2025-04-12',
        time: '10:55'

    ,
      name: 'Matias Henrique Leidemer',
      photo: 'themes/yellow-swan/img/matias_leidemer.png',
      bio: 'Matias Leidemer é engenheiro de software formado pela Unisinos, com 20 anos de experiência. Destes 20 anos, 10 foram trabalhando para empresas do exterior, desempenhando diferentes papéis. Atualmente trabalha como Sr. Fullstack Engineer na Tropic, uma empresa americana que atua na área de "procurement".',
      link:
        href: 'https://matiasleidemer.dev',
        text: 'Website'
      company: 'Tropic',
      presentation:
        title: 'Roda de Conversa sobre trabalho no exterior',
        description: '',
        date: '2025-04-12',
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
      name: 'Codeminer 42'
      logo: 'themes/yellow-swan/img/codeminer42.jpg'
      url: 'https://www.codeminer42.com'
    ,
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