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
      date: '25/Out e 18/Nov de 2017'
      # If your event is free, just comment this line
      # price: '$100',
      venue: 'Universidade Feevale'
      address: 'ERS-239, 2755'
      city: 'Novo Hamburgo'
      state: 'RS'
      complement: 'Auditório do prédio Multicolor'

    # The Call To Action button at the header,
    # If you don't want this, just remove the callToAction property.
    callToAction:
      text: 'Confirme sua presença'
      link: 'https://www.meetup.com/Vale-dos-Desenvolvedores/events/244315151/'

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
      'speakers'
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
      name: 'Rafael Peixe',
      email: 'rafaelpeixe@gmail.com',
      photo: 'https://s.gravatar.com/avatar/da6fb493cecc5765c18254b4331c5d8f?s=240',
      bio: 'Analista de Sistemas na Meta e Formando em Ciência da Computação na Feevale',
      company: 'Meta',
      link:
        href: '',
        text: ''
      presentation:
        title: 'Introdução ao Scrum',
        description: 'Apresentar considerações sobre projetos, o framework do Scrum e algumas técnicas ágeis utilizadas.',
        date: 'Quarta, 25 de outubro de 2017',
        time: '19:30'
    ,
      name: 'Vinícius Almeida',
      email: 'vinialm88@gmail.com',
      photo: 'themes/yellow-swan/img/vinicius-almeida.jpg',
      bio: 'Consultor de desenvolvimento na 87labs com experiência em consultoria programando em Ruby, Node e tecnologias front-end. Hoje sente-se velho cada vez que aparece uma ferramenta nova resolvendo - de forma diferente - velhos problemas já resolvidos mas se esforça em defender isso sem cair na apologia à obsolescência tecnológica. Membro importante na cadeia de software livre na condição de usuário.'
      company: '87labs',
      link:
        href: 'https://twitter.com/vimoding',
        text: '@vimoding'
      presentation:
        title: 'Don\'t blame your tools',
        description: "Falaremos sobre como a volatilidade da atenção da comunidade front-end afeta a indústria, dieta forçada para trolls e como escrever código razoável* com tooling de primeira (webpack, nesse caso) e ferramentas que não tem mais espaço no <i>buzz</i> mas que sabemos que continuarão presentes no nosso dia-a-dia**.<br>
        <br>* não se precipite, definiremos isso durante a conversa
        <br>** vai ter jQuery sim",
        date: 'Quarta, 25 de outubro de 2017',
        time: '20:30'
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
