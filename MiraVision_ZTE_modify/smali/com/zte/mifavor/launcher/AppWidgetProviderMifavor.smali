.class public abstract Lcom/zte/mifavor/launcher/AppWidgetProviderMifavor;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidgetProviderMifavor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs abstract onAppLauncherColorChange(Landroid/content/Context;Ljava/lang/String;I[I)V
.end method

.method public abstract onAppWidgetBgColorChanged(Landroid/content/Context;IILjava/lang/String;)V
.end method

.method public abstract onAppWidgetBgSettingOnclick(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method public abstract onAppWidgetOnLongClick(Landroid/content/Context;ILjava/lang/String;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 13
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 14
    .local v4, "action":Ljava/lang/String;
    const-string v18, "com.zte.mifavorlauncher.support.WIDGET_SETTING_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 15
    const-string v18, "widgetId"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 16
    .local v17, "widgetId":I
    const-string v18, "bgColor"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 17
    .local v5, "bgColor":I
    const-string v18, "providerName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 18
    .local v15, "providerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v5, v15}, Lcom/zte/mifavor/launcher/AppWidgetProviderMifavor;->onAppWidgetBgColorChanged(Landroid/content/Context;IILjava/lang/String;)V

    .line 53
    .end local v5    # "bgColor":I
    .end local v15    # "providerName":Ljava/lang/String;
    .end local v17    # "widgetId":I
    :cond_0
    :goto_0
    return-void

    .line 20
    :cond_1
    const-string v18, "com.zte.mifavorlauncher.support.WIDGET_LONG_CLICK"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 21
    const-string v18, "providerName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 22
    .restart local v15    # "providerName":Ljava/lang/String;
    const-string v18, "widgetId"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 23
    .restart local v17    # "widgetId":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Lcom/zte/mifavor/launcher/AppWidgetProviderMifavor;->onAppWidgetOnLongClick(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 25
    .end local v15    # "providerName":Ljava/lang/String;
    .end local v17    # "widgetId":I
    :cond_2
    const-string v18, "com.zte.mifavorlauncher.support.COLOR_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 26
    const-string v18, "bgColor"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 27
    .local v7, "colorBG":I
    const-string v18, "foreColor"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 28
    .local v14, "foreColor":I
    const-string v18, "Color2"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 29
    .local v9, "colorCC":I
    const-string v18, "Color3"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 30
    .local v8, "colorCB":I
    const-string v18, "Color4"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 31
    .local v10, "colorCI":I
    const-string v18, "Color5"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 32
    .local v11, "colorMB":I
    const-string v18, "Color6"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 33
    .local v6, "colorBB":I
    const-string v18, "Color7"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 34
    .local v12, "colorSB":I
    const-string v18, "Color8"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 35
    .local v13, "colorSI":I
    const-string v18, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 36
    .local v16, "tag":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "COLOR_CHANGED"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 37
    :cond_3
    const/16 v18, 0x8

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput v7, v18, v19

    const/16 v19, 0x1

    aput v9, v18, v19

    const/16 v19, 0x2

    aput v8, v18, v19

    const/16 v19, 0x3

    .line 38
    aput v10, v18, v19

    const/16 v19, 0x4

    aput v11, v18, v19

    const/16 v19, 0x5

    aput v6, v18, v19

    const/16 v19, 0x6

    aput v12, v18, v19

    const/16 v19, 0x7

    aput v13, v18, v19

    .line 37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/zte/mifavor/launcher/AppWidgetProviderMifavor;->onAppLauncherColorChange(Landroid/content/Context;Ljava/lang/String;I[I)V

    goto/16 :goto_0

    .line 41
    .end local v6    # "colorBB":I
    .end local v7    # "colorBG":I
    .end local v8    # "colorCB":I
    .end local v9    # "colorCC":I
    .end local v10    # "colorCI":I
    .end local v11    # "colorMB":I
    .end local v12    # "colorSB":I
    .end local v13    # "colorSI":I
    .end local v14    # "foreColor":I
    .end local v16    # "tag":Ljava/lang/String;
    :cond_4
    const-string v18, "com.zte.mifavorlauncher.support.WALLPAPER_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 42
    const-string v18, "foreColor"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 43
    .restart local v14    # "foreColor":I
    const-string v18, "COLOR_CHANGED"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/zte/mifavor/launcher/AppWidgetProviderMifavor;->onAppLauncherColorChange(Landroid/content/Context;Ljava/lang/String;I[I)V

    goto/16 :goto_0

    .line 45
    .end local v14    # "foreColor":I
    :cond_5
    const-string v18, "com.zte.mifavorlauncher.support.SETTING_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 46
    const-string v18, "widgetId"

    const/16 v19, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 47
    .restart local v17    # "widgetId":I
    const-string v18, "sender"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 48
    .restart local v15    # "providerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Lcom/zte/mifavor/launcher/AppWidgetProviderMifavor;->onAppWidgetBgSettingOnclick(Landroid/content/Context;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 51
    .end local v15    # "providerName":Ljava/lang/String;
    .end local v17    # "widgetId":I
    :cond_6
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
