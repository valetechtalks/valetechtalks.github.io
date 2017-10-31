module.exports =
  prompts: false

  # Plugin configuration
  plugins:
    ghpages:
      deployBranch: 'master'

  # These are variables will be accessible via our templates
  templateData:
    # Conference info
    conf:
      name: 'Vale dos Desenvolvedores'
      description: 'Valley of Developers Meetup Roadmap 2017'
      date: '18/Nov de 2017'
      # If your event is free, just comment this line
      # price: '$100',
      venue: 'Universidade Feevale'
      address: 'ERS-239, 2755'
      city: 'Novo Hamburgo'
      state: 'RS'
      complement: 'Auditório do prédio Azul'

    # The Call To Action button at the header,
    # If you don't want this, just remove the callToAction property.
    # callToAction:
      # text: 'Confirme sua presença'
      # link: 'https://www.meetup.com/Vale-dos-Desenvolvedores/events/244315151/'

    # 'Fork me on GitHub', if you don't want this,
    # just remove the forkButton property
    # forkButton:
    #   repository: 'https://github.com/valleyofdevelopers/valleyofdevelopers.github.io'

    # Site info
    site:
      theme: 'yellow-swan'
      url: 'https://valleyofdevelopers.github.io/'
      googleanalytics: 'UA-104968748-1'
      googleMapsApiKey: 'AIzaSyA2RQp4qEQfzRBgj6oyaa70uDp7nnIARUg'

    # Active sections on the website
    # to deactivate comment out with '//'
    # you can also change order here and it will reflect on page
    sections: [
      'about'
      'location'
      # 'speakers'
      'schedule'
      'callforpapers'
      'sponsors'
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
      name: '',
      email: '',
      photo: '',
      bio: '',
      company: '',
      link:
        href: '',
        text: ''
      presentation:
        title: 'Palestra 1',
        description: 'À Confirmar',
        date: 'Sábado, 18 de Novembro de 2017',
        time: '13:00'
    ,
      name: '',
      email: '',
      photo: '',
      bio: '',
      company: '',
      link:
        href: '',
        text: ''
      presentation:
        title: 'Palestra 2',
        description: 'À Confirmar',
        date: 'Sábado, 18 de Novembro de 2017',
        time: '14:00'
    ,
      name: 'Coffee-Break',
      date: 'Sábado, 18 de Novembro de 2017',
      time: '15:00'
    ,
      name: '',
      email: '',
      photo: '',
      bio: '',
      company: '',
      link:
        href: '',
        text: ''
      presentation:
        title: 'Palestra 3',
        description: 'À Confirmar',
        date: 'Sábado, 18 de Novembro de 2017',
        time: '15:15'
    ,
      name: '',
      email: '',
      photo: '',
      bio: '',
      company: '',
      link:
        href: '',
        text: ''
      presentation:
        title: 'Palestra 4',
        description: 'À Confirmar',
        date: 'Sábado, 18 de Novembro de 2017',
        time: '16:15'
    ]

    # Call for Papers info
    callforpapers:
      url: 'https://goo.gl/forms/Jyeqyrd1dwi2w3752'

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
      name: 'Universidade Feevale'
      logo: 'themes/yellow-swan/img/feevale.jpg'
      url: 'http://feevale.br'
    ]

    contacts: [
      name: 'Paulo Diovani'
      email: 'paulo@diovani.com'
    ,
      name: 'Rodrigo Boniatti'
      email: 'boniatti.rodrigo@gmail.com'
    ]

    # Theme path
    getTheme: ->
      'themes/' + @site.theme

    # Site Path
    getUrl: ->
      @site.url
