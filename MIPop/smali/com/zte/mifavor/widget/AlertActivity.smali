.class public abstract Lcom/zte/mifavor/widget/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field protected mAlert:Lcom/zte/mifavor/widget/AlertController;

.field protected mAlertParams:Lcom/zte/mifavor/widget/AlertController$AlertParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertActivity;->finish()V

    .line 57
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertActivity;->finish()V

    .line 65
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 70
    sget v0, Lcom/zte/extres/R$anim;->fade_hold:I

    sget v1, Lcom/zte/extres/R$anim;->dialog_exit_material:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/AlertActivity;->overridePendingTransition(II)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/zte/extres/R$anim;->dialog_enter_material:I

    sget v1, Lcom/zte/extres/R$anim;->fade_hold:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/widget/AlertActivity;->overridePendingTransition(II)V

    .line 51
    new-instance v0, Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/zte/mifavor/widget/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertActivity;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    .line 52
    new-instance v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/widget/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertActivity;->mAlertParams:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertActivity;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertActivity;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/widget/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 94
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected setupAlert()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertActivity;->mAlertParams:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertActivity;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertController$AlertParams;->apply(Lcom/zte/mifavor/widget/AlertController;)V

    .line 82
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertActivity;->mAlert:Lcom/zte/mifavor/widget/AlertController;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertController;->installContent()V

    .line 83
    return-void
.end method
