#########################################################
# Title:  Base View Class
# Author: kevin@wintr.us @ WINTR
#########################################################


require('../../helpers/ViewHelper')

class View extends Backbone.View

  ###//--------------------------------------
  //+ PUBLIC PROPERTIES / CONSTANTS
  //--------------------------------------###

  #
  # @private
  #
  template: ->
   
  #
  # @private
  #
  getRenderData: ->

  ###//--------------------------------------
  //+ INHERITED / OVERRIDES
  //--------------------------------------###
  
  #
  # @private
  #
  initialize: ->
    @render = _.bind( @render, @ )

  #
  # @private
  #
  render: ->
    @$el.html( @template( @getRenderData() ) )
    
    @afterRender()
    
    return @

  #
  # @private
  #
  afterRender: ->

  ###//--------------------------------------
  //+ PUBLIC METHODS / GETTERS / SETTERS
  //--------------------------------------###

  ###//--------------------------------------
  //+ EVENT HANDLERS
  //--------------------------------------###

  ###//--------------------------------------
  //+ PRIVATE AND PROTECTED METHODS
  //--------------------------------------###

module.exports = View