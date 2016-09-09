.class public Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;
.super Lcom/zte/mifavor/launcher/WidgetsAdapter;
.source "WidgetsAdapterImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/zte/mifavor/launcher/WidgetsAdapter;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public backgroundChanged(ILjava/lang/String;I)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "bgColor"    # I

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.mifavorlauncher.support.BG_COLOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    const-string v1, "sender"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v1, "bgColor"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 28
    :cond_0
    return-void
.end method

.method public onActionSetting(ILjava/lang/String;I)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "bgColor"    # I

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.mifavorlauncher.support.SETTING_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 36
    const-string v1, "sender"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const-string v1, "bgColor"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/WidgetsAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    :cond_0
    return-void
.end method
