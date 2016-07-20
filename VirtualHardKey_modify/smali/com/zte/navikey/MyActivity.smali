.class public Lcom/zte/navikey/MyActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "MyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f0a002f

    invoke-virtual {p0, v1}, Lcom/zte/navikey/MyActivity;->setTheme(I)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/zte/navikey/MyActivity;->setRequestedOrientation(I)V

    .line 34
    invoke-virtual {p0}, Lcom/zte/navikey/MyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 35
    .local v0, "ab":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 36
    const/16 v1, 0xd

    .line 38
    const/16 v2, 0xf

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/zte/navikey/MyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/navikey/MyActivity;->setIndicatorColor(I)V

    .line 44
    return-void
.end method
