.class public Lcom/zte/zgesture/setting/LearnMoreActivity;
.super Lcom/zte/mifavor/widget/ActivityZTE;
.source "LearnMoreActivity.java"


# instance fields
.field private introText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/zte/mifavor/widget/ActivityZTE;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v3, 0x7f030057

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/setting/LearnMoreActivity;->setContentView(I)V

    .line 25
    invoke-static {p0}, Lcom/zte/zgesture/tools/Utils;->getIndicatorColor(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/setting/LearnMoreActivity;->setIndicatorColor(I)V

    .line 27
    const v3, 0x7f060066

    invoke-virtual {p0, v3}, Lcom/zte/zgesture/setting/LearnMoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/zgesture/setting/LearnMoreActivity;->introText:Landroid/widget/TextView;

    .line 28
    iget-object v3, p0, Lcom/zte/zgesture/setting/LearnMoreActivity;->introText:Landroid/widget/TextView;

    const v4, 0x7f090099

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 30
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/LearnMoreActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 31
    .local v0, "actionBar":Landroid/app/ActionBar;
    new-instance v2, Lcom/zte/zgesture/ui/ActionBarView;

    invoke-direct {v2, p0, v0}, Lcom/zte/zgesture/ui/ActionBarView;-><init>(Landroid/content/Context;Landroid/app/ActionBar;)V

    .line 32
    .local v2, "actionBarView":Lcom/zte/zgesture/ui/ActionBarView;
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->initActionBar()V

    .line 33
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarTitileView()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f090060

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 34
    invoke-virtual {v2}, Lcom/zte/zgesture/ui/ActionBarView;->getActionBarSwitch()Landroid/widget/Switch;

    move-result-object v1

    .line 35
    .local v1, "actionBarSwitch":Landroid/widget/Switch;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setVisibility(I)V

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/zte/mifavor/widget/ActivityZTE;->onDestroy()V

    .line 44
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 48
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/ActivityZTE;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 50
    :pswitch_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/LearnMoreActivity;->finish()V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
