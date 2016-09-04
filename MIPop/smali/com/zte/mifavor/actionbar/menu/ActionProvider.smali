.class public abstract Lcom/zte/mifavor/actionbar/menu/ActionProvider;
.super Ljava/lang/Object;
.source "ActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;,
        Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider"


# instance fields
.field private mSubUiVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;

.field private mVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method


# virtual methods
.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 1
    .param p1, "forItem"    # Landroid/view/MenuItem;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->onCreateActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0
    .param p1, "subMenu"    # Landroid/view/SubMenu;

    .prologue
    .line 205
    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;

    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->isVisible()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;->onActionProviderVisibilityChanged(Z)V

    .line 140
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;

    .line 247
    iput-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mSubUiVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;

    .line 248
    return-void
.end method

.method public setSubUiVisibilityListener(Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mSubUiVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;

    .line 225
    return-void
.end method

.method public setVisibilityListener(Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;

    if-eqz v0, :cond_0

    .line 235
    const-string v0, "ActionProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance while it is still in use somewhere else?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$VisibilityListener;

    .line 240
    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 215
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mSubUiVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/menu/ActionProvider;->mSubUiVisibilityListener:Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/actionbar/menu/ActionProvider$SubUiVisibilityListener;->onSubUiVisibilityChanged(Z)V

    .line 218
    :cond_0
    return-void
.end method
