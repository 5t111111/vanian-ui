describe "One Dark UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('vanian-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('vanian-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('vanian-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-vanian-ui-layoutmode')).toBe 'auto'

    atom.config.set('vanian-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-vanian-ui-layoutmode')).toBe 'spacious'

  it "allows the tab sizing to be set via config", ->
    expect(document.documentElement.getAttribute('theme-vanian-ui-tabsizing')).toBe 'auto'

    atom.config.set('vanian-ui.tabSizing', 'Minimum')
    expect(document.documentElement.getAttribute('theme-vanian-ui-tabsizing')).toBe 'minimum'
