.class public Lcom/zte/mifavor/preference/SwitchPreferenceZTE;
.super Lcom/zte/mifavor/preference/TwoStatePreference;
.source "SwitchPreferenceZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;
    }
.end annotation


# instance fields
.field private mCutoffView:Landroid/widget/ImageView;

.field private final mListener:Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSwitchOff:Ljava/lang/CharSequence;

.field private mSwitchOn:Ljava/lang/CharSequence;

.field private mSwitchView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    sget v0, Lcom/zte/extres/R$attr;->switchPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zte/mifavor/preference/TwoStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    new-instance v1, Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;-><init>(Lcom/zte/mifavor/preference/SwitchPreferenceZTE;)V

    iput-object v1, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mListener:Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 92
    sget-object v1, Lcom/zte/extres/R$styleable;->SwitchPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 94
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 96
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 98
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 100
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setDisableDependentsState(Z)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/preference/SwitchPreferenceZTE;)Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/SwitchPreferenceZTE;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object v0
.end method


# virtual methods
.method public getSwitchTextOff()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchOff:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSwitchTextOn()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchOn:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/TwoStatePreference;->onBindView(Landroid/view/View;)V

    .line 152
    sget v2, Lcom/zte/extres/R$id;->switchWidget:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 153
    .local v0, "checkableView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v2, v0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 154
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 155
    check-cast v1, Landroid/widget/Switch;

    .line 156
    .local v1, "switchView":Landroid/widget/Switch;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .end local v1    # "switchView":Landroid/widget/Switch;
    :cond_0
    move-object v2, v0

    .line 159
    check-cast v2, Landroid/widget/Checkable;

    iget-boolean v3, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mChecked:Z

    invoke-interface {v2, v3}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 161
    instance-of v2, v0, Landroid/widget/Switch;

    if-eqz v2, :cond_1

    .line 162
    check-cast v0, Landroid/widget/Switch;

    .end local v0    # "checkableView":Landroid/view/View;
    iput-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchView:Landroid/widget/Switch;

    .line 163
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchView:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTextOn(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchView:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setTextOff(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchView:Landroid/widget/Switch;

    iget-object v3, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mListener:Lcom/zte/mifavor/preference/SwitchPreferenceZTE$Listener;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 174
    :cond_1
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->syncSummaryView(Landroid/view/View;)V

    .line 176
    sget v2, Lcom/zte/extres/R$id;->ib_add:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mCutoffView:Landroid/widget/ImageView;

    .line 177
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mCutoffView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 179
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mCutoffView:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setClickable(Z)V

    .line 187
    :cond_2
    :goto_0
    return-void

    .line 182
    :cond_3
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mCutoffView:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v2, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchView:Landroid/widget/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setChecked(Z)V

    .line 146
    :cond_0
    return-void

    .line 143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSwitchOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 75
    return-void
.end method

.method public setSwitchTextOff(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method

.method public setSwitchTextOff(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "offText"    # Ljava/lang/CharSequence;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchOff:Ljava/lang/CharSequence;

    .line 208
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->notifyChanged()V

    .line 209
    return-void
.end method

.method public setSwitchTextOn(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 219
    return-void
.end method

.method public setSwitchTextOn(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "onText"    # Ljava/lang/CharSequence;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->mSwitchOn:Ljava/lang/CharSequence;

    .line 197
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/SwitchPreferenceZTE;->notifyChanged()V

    .line 198
    return-void
.end method
