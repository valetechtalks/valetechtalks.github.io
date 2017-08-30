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
      name: 'Eduardo Sganzerla',
      email: 'esganzerla@gmail.com',
      photo: 'themes/yellow-swan/img/eduardo-sganzerla.jpg',
      bio: 'Usuário de desenvolvimento web desde aproximademente os 8 anos, quando teve acesso ao antigo HPG, em sábados após as 14h. Isso levou a aprender programar um pouco de Javascript e PHP 4. Conseguiu libertar do desenvolvimento por um tempo, se formou em Administração de Empresas, mas em 2015 teve uma recaida e está viciado em desenvolvimento front-end.',
      # company: '',
      link:
        href: 'http://twitter.com/esganzerla',
        text: '@esganzerla'
      presentation:
        title: 'VueJS como uma droga de entrada',
        description: 'Se você ainda não é dependente de nenhuma  biblioteca/framework vai conseguir experimentar o prazer de usa-los. Além do crescente destaque o VueJS está recebendo na comunidade ele é uma excelente porta de entrada. Vamos conversar sobre tudo o que é necessário para você construir sua primeira aplicação.',
        date: 'Terça, 12 de Setembro de 2017',
        time: '19:30'
    ,
      name: 'Gabriel Schmitt Kohlrausch',
      email: 'gabriel@society.com.br',
      photo: 'themes/yellow-swan/img/gabriel-schmitt-kohlrausch.jpg',
      bio: 'Diretor Pesquisa & Desenvolvimento - Society Tecnologia da Informação LTDA; Arquiteto de software Society',
      company: 'STI Society Tecnologia da Informação',
      # link:
      #   href: 'http://twitter.com/linus',
      #   text: '@linus'
      presentation:
        title: 'Azure Service Bus: Aplicações escaláveis através de mensageria',
        description: 'Apresentar como o uso de mensageria pode ajudar uma aplicação a escalar. Para isso vamos um pouco além do Service Bus do Azure e vamos  utilizar um framework (MassTransit) para auxiliar a comunicação com o Service Bus, bem como demonstrar como isso tudo se encaixa com DDD (Domain Driven Design).',
        date: 'Terça, 12 de Setembro de 2017',
        time: '20:10'
    ]

    # Call for Papers info
    callforpapers:
      url: 'https://goo.gl/forms/Jyeqyrd1dwi2w3752'

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
