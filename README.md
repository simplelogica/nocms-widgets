# NoCMS Widgets

## What's this?

This is a Rails engine with a basic functionality of customizable widgets. It's not attached to any particular CMS so you can use it freely within your Rails application without too much dependencies,¡.

## How do I install it?

Right now there's no proper gem, although we have a couple of projects making extensive use of it.

To install it just put the repo in your Gemfile:

```ruby
gem "nocms-widgets", git: 'git@github.com:simplelogica/nocms-widgets.git'
```

And then import all the migrations:

```
rake no_cms_blocks:install:migrations
rake no_cms_widgets:install:migrations
```

And run the initializer:

```
rails g nocms:blocks
```

## Rendering widgets

NoCMS Widgets depends on NoCMS Blocks, you can see how NoCMS Blocks works [here](https://github.com/simplelogica/nocms-blocks). Then, you only need to render the widget in the views you want show it:

```ruby
<%= render NoCms::Widgets::Widget.get 'my-widget' %>
```
Where the string 'my-widget' is the slug of the widget to render.

If you want to set cache options you need to pass this options as locals:
```ruby
<%= render partial: 'no_cms/widgets/widgets/widget', locals: { widget: NoCms::Widgets::Widget.get 'my-widget', options: { cache_enabled: false } } %>
```

## Where is the admin interface?

`nocms-widgets` is a gem with the minimum dependencies and that includes the admin interface.

Main idea is that this gem can be used in a project with a Rails Admin, an Active Admin or a home made admin. Of course, it can be tricky to embed this dynamic kind of blocks in a pre-built admin, but we think that freedom must be given to the developers.

As soon as we started using this gem we started our own admin interface, which is contained in another gem [nocms-admin-widgets](https://github.com/simplelogica/nocms-admin-widgets) and you can use it.

If your project already has another standard admin interface such as Rails Admin and you manage to embed nocms-widgets on it, please, let us know and we will make a note here giving you full credit for the development :)
