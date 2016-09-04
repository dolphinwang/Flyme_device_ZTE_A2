.class public Lcom/zte/mifavor/preference/SwitchPreference;
.super Lcom/zte/mifavor/preference/TwoStatePreference;
.source "SwitchPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/SwitchPreference$1;,
        Lcom/zte/mifavor/preference/SwitchPreference$Listener;
    }
.end annotation


# instance fields
.field mColor:I

.field private mCutoffView:Landroid/widget/ImageView;

.field private final mListener:Lcom/zte/mifavor/preference/SwitchPreference$Listener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 113
    sget v0, Lcom/zte/extres/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    new-instance v1, Lcom/zte/mifavor/preference/SwitchPreference$Listener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/mifavor/preference/SwitchPreference$Listener;-><init>(Lcom/zte/mifavor/preference/SwitchPreference;Lcom/zte/mifavor/preference/SwitchPreference$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mListener:Lcom/zte/mifavor/preference/SwitchPreference$Listener;

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mColor:I

    .line 80
    sget-object v1, Lcom/zte/extres/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 84
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 86
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreference;->setDisableDependentsState(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    return-void
.end method


# virtual methods
.method public SetColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mColor:I

    .line 224
    return-void
.end method

.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 129
    sget v2, Lcom/zte/extres/R$id;->switchWidget:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, "checkableView":Landroid/view/View;
    iget v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mColor:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/zte/mifavor/widget/SetColorable;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 134
    check-cast v2, Lcom/zte/mifavor/widget/SetColorable;

    iget v3, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mColor:I

    invoke-interface {v2, v3}, Lcom/zte/mifavor/widget/SetColorable;->SetColor(I)V

    .line 137
    :cond_0
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_2

    .line 138
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 139
    check-cast v1, Landroid/widget/Switch;

    .line 140
    .local v1, "switchView":Landroid/widget/Switch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_1
    move-object v2, v0

    .line 143
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 145
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 146
    check-cast v1, Landroid/widget/Switch;

    .line 147
    .restart local v1    # "switchView":Landroid/widget/Switch;
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mListener:Lcom/zte/mifavor/preference/SwitchPreference$Listener;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 153
    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SwitchPreference;->syncSummaryView(Landroid/view/View;)V

    .line 155
    sget v2, Lcom/zte/extres/R$id;->ib_add:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    .line 156
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 158
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    :cond_3
    :goto_0
    return-void

    .line 160
    :cond_4
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mCutoffView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOff:Ljava/lang/CharSequence;

    .line 185
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->notifyChanged()V

    .line 186
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreference;->mSwitchOn:Ljava/lang/CharSequence;

    .line 174
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreference;->notifyChanged()V

    .line 175
    return-void
.end method
