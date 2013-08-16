---
layout: post
title: "automatically generate wpf listview columns"
date: 2011-11-08 23:16
comments: true
categories: [develop, wpf, .net, stackoverflow]
keywords: develop,wpf,.net,stackoverflow,binding,c#,csharp,listview
description: how to automatically generate wpf listview columns
---

after answering this question at [stackoverflow](http://stackoverflow.com/questions/6376280/wpf-binding-in-code), i post it here too. the code generates automatically listview columns for all properties for the given datatype.

{% codeblock lang:csharp %}
public class BaseListView : ListView
{
  public BaseListView() {
    ItemsSourceProperty.AddOwner(
        typeof(BaseListView),
        new FrameworkPropertyMetadata(null, OnItemsSourcePropertyChanged));
  }

  private static void OnItemsSourcePropertyChanged(DependencyObject dependencyObject, DependencyPropertyChangedEventArgs e) {
    if (e.OldValue != e.NewValue && e.NewValue != null) {
      var lv = (BaseListView)dependencyObject;
      var gridView = new GridView();
      lv.View = gridView;
      gridView.AllowsColumnReorder = true;
      var properties = lv.DataType.GetProperties();
      foreach (var pi in properties) {
        var binding = new Binding {Path = new PropertyPath(pi.Name), Mode = BindingMode.OneWay};
        var gridViewColumn = new GridViewColumn() {Header = pi.Name, DisplayMemberBinding = binding};
        gridView.Columns.Add(gridViewColumn);
      }
    }
  }

  public Type DataType { get; set; }
}
{% endcodeblock %}

{% codeblock lang:xml %}
<Grid>
  <local:BaseListView x:Name="listView"
                      DataType="{x:Type DummyType}"
                      ItemsSource="{Binding Mode=OneWay, Path=DummyTypeList}" />
</Grid>
{% endcodeblock %}

thats it
