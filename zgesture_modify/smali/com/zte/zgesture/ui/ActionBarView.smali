.class public Lcom/zte/zgesture/ui/ActionBarView;
.super Ljava/lang/Object;
.source "ActionBarView.java"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/ActionBar;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionBar"    # Landroid/app/ActionBar;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/zte/zgesture/ui/ActionBarView;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mActionBar:Landroid/app/ActionBar;

    .line 23
    return-void
.end method


# virtual methods
.method public getActionBarSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/zte/zgesture/ui/ActionBarView;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method public getActionBarTitileView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/zte/zgesture/ui/ActionBarView;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initActionBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 26
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 28
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v4}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 29
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 31
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 33
    .local v0, "inflator":Landroid/view/LayoutInflater;
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v2, :cond_1

    .line 34
    const v2, 0x7f030046

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    .local v1, "view":Landroid/view/View;
    :goto_0
    const v2, 0x7f06005d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mTextView:Landroid/widget/TextView;

    .line 39
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mTextView:Landroid/widget/TextView;

    sget v3, Lcom/zte/zgesture/tools/FeatureConfig;->actionBarTextSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 40
    const v2, 0x7f060037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mSwitch:Landroid/widget/Switch;

    .line 41
    sget-boolean v2, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mSwitch:Landroid/widget/Switch;

    check-cast v2, Lcom/zte/mifavor/widget/SwitchZTE;

    invoke-virtual {v2, v4}, Lcom/zte/mifavor/widget/SwitchZTE;->SetOnActionBar(Z)V

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/zte/zgesture/ui/ActionBarView;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 46
    return-void

    .line 36
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    const v2, 0x7f030047

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0
.end method
