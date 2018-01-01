class ItemsController < ApplicationController
  # this file is the item 'controller' - the browser makes http requests like GET, PATCH, POST, etc,
  # which the router (config/routes.rb) takes and directs to this file. so if the browser says
  # GET all items, the router would see that request and direct it to the 'index' method here based on
  # how we've configured routes.rb.
  # this file responds to all those requests by talking to the model (Item.all) which talks to the
  # database to get all the items, and return them to this file,
  # which saves them all in an 'instance variable' called '@items'. @items is used by the 'view' - the file
  # that gets returned to the browser to actually show the list of all items.
  # so it goes browser -> router -> controller -> model -> database -> model -> controller -> view -> browser

  # this line basically says: before the 'show', 'update', 'destory' methods, run 'set_item'
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # GET /items
  def index
    # @items is called an 'instance variable' - it's set in the controller and used by the view.
    @items = Item.all
    # if you wanted to, you could specify which items to return here... maybe you only want items that
    # are due today, or maybe you only want incomplete items, whatever.
  end

  # GET /items/1
  # this returns the 'show' view for the specified item
  def show
  end

  # GET /items/new
  # this returns the 'new' view
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  # this returns the 'edit' view
  def edit
  end

  # POST /items
  # this handles the 'create' request
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /items/1
  # this handles the 'update' request
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /items/1
  # this handles the 'delete' request
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
    end
  end

  # 'private' indicates that everything below this line is a 'private method'. only
  # methods within this class can call the methods below this line.
  private

  # set_item is used by a bunch of the methods above - show, edit, update, destroy.
  # rather than writing this line over and over again, we can write it once right here
  # and then call it before each of those methods using the 'before_action' line above.
  def set_item
    @item = Item.find(params[:id])
  end

  # i don't really understand how but somehow an attacker could modify a form to send
  # bogus parameters that you wouldn't want to save. so we use "strong params"
  # to whitelist which params we're willing to listen for - only the ones that are
  # present in our items table.
  def item_params
    params.require(:item).permit(:content, :due, :status)
  end
end
