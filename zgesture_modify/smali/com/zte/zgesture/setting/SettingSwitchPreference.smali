.class public Lcom/zte/zgesture/setting/SettingSwitchPreference;
.super Lcom/zte/mifavor/preference/Preference;
.source "SettingSwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchEnable:Z

.field private mTitle:Landroid/widget/TextView;

.field private mTitleSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitchEnable:Z

    .line 28
    const/high16 v0, 0x41400000    # 12.0f

    iput v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mTitleSize:F

    .line 37
    sget-boolean v0, Lcom/zte/zgesture/tools/FeatureConfig;->mifavorWidget:Z

    if-eqz v0, :cond_0

    .line 38
    const v0, 0x7f03005f

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setLayoutResource(I)V

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_0
    const v0, 0x7f030060

    invoke-virtual {p0, v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->setLayoutResource(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/zte/zgesture/setting/SettingSwitchPreference;)Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/zgesture/setting/SettingSwitchPreference;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    return-object v0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 65
    const v0, 0x7f060037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    .line 67
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mTitle:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mTitle:Landroid/widget/TextView;

    iget v1, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mTitleSize:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 70
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v1, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitchEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    invoke-interface {v1}, Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;->initSwitch()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 74
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    new-instance v1, Lcom/zte/zgesture/setting/SettingSwitchPreference$1;

    invoke-direct {v1, p0}, Lcom/zte/zgesture/setting/SettingSwitchPreference$1;-><init>(Lcom/zte/zgesture/setting/SettingSwitchPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    invoke-interface {v0}, Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;->onClick()V

    .line 99
    :cond_0
    return-void
.end method

.method public setListener(Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mListener:Lcom/zte/zgesture/setting/SettingSwitchPreference$SettingSwitchPreferenceListener;

    .line 47
    return-void
.end method

.method public setSwitchChecked(Z)V
    .locals 1
    .param p1, "bChecked"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->notifyChanged()V

    .line 54
    return-void
.end method

.method public setSwitchEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mSwitchEnable:Z

    .line 58
    invoke-virtual {p0}, Lcom/zte/zgesture/setting/SettingSwitchPreference;->notifyChanged()V

    .line 59
    return-void
.end method

.method public setTitleSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 86
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 87
    iput p1, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mTitleSize:F

    .line 92
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/zte/zgesture/setting/SettingSwitchPreference;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method
