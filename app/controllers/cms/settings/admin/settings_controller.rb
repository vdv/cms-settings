# -*- encoding: utf-8 -*-
class Cms::Settings::Admin::SettingsController < Cms::Admin::ApplicationController
  def index
    @settings = Cms::Setting.all
  end

  def show
    @setting = Cms::Setting.find(params[:id])
  end

  def new
    @setting = Cms::Setting.new
  end

  def edit
    @setting = Cms::Setting.find(params[:id])
  end

  def create
    @setting = Cms::Setting.new(params[:cms_setting])
    if @setting.save
      redirect_to cms_settings.admin_settings_url, :notice => 'Параметр сохранен.'
    else
      render :action => "new"
    end
  end

  def update
    @setting = Cms::Setting.find(params[:id])

    if @setting.update_attributes(params[:cms_setting])
      redirect_to admin_settings_url, :notice => 'Параметр сохранен.'
    else
      render :action => "edit"
    end
  end
end
