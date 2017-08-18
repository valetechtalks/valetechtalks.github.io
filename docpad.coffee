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
      date: '12/Set, 25/Out e 11/Nov de 2017'
      # If your event is free, just comment this line
      # price: '$100',
      venue: 'Universidade Feevale'
      address: 'ERS-239, 2755'
      city: 'Novo Hamburgo'
      state: 'RS'
      complement: 'Auditório do prédio Multicolor'

    # The Call To Action button at the header,
    # If you don't want this, just remove the callToAction property.
    # callToAction:
    #   text: 'Confirme sua presença'
    #   link: 'https://www.meetup.com/Vale-dos-Desenvolvedores/'

    # 'Fork me on GitHub', if you don't want this,
    # just remove the forkButton property
    # forkButton:
    #   repository: 'https://github.com/braziljs/conf-boilerplate'

    # Site info
    site:
      theme: 'yellow-swan'
      url: 'https://valleyofdevelopers.github.io/'
      googleanalytics: ''

    # Active sections on the website
    # to deactivate comment out with '//'
    # you can also change order here and it will reflect on page
    sections: [
      'about'
      'location'
      # 'speakers'
      # 'schedule'
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
      sponsors: 'Patrocinadores'
      partners: 'Apoio'
      contact: 'Contato'

    # The entire schedule
    schedule: [
      name: 'Check-in / Breakfast'
      time: '9h00'
    ,
      name: 'Linus Torvalds',
      photo: 'themes/yellow-swan/img/speaker.jpg',
      bio: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
      company: 'Linux Foundation',
      link:
        href: 'http://twitter.com/linus',
        text: '@linus'
      presentation:
        title: 'Digging into a Linux Kernel',
        description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo',
        time: '10h00'
    ]

    # List of Sponsors
    sponsors: [
      # name: 'Eventick'
      # logo: 'themes/yellow-swan/img/sponsor.png'
      # url: 'http://eventick.com.br'
    ]

    # List of Partners
    partners: [
      name: 'Codeminer 42'
      logo: 'themes/yellow-swan/img/codeminer42.jpg'
      url: 'http://codeminer42.com'
    ,
      name: 'Universidade Feevale'
      logo: 'themes/yellow-swan/img/feevale.png'
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
