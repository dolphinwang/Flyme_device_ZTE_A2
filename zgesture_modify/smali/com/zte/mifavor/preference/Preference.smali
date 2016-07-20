.class public Lcom/zte/mifavor/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/Preference$BaseSavedState;,
        Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;,
        Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;,
        Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/zte/mifavor/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mHight:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mImageView:Landroid/widget/ImageView;

.field private mIntent:Landroid/content/Intent;

.field private mIsIndicator:Z

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 355
    sget v0, Lcom/zte/extres/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 337
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 338
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const v3, 0x7fffffff

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    .line 116
    iput-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    .line 117
    iput-boolean v7, p0, Lcom/zte/mifavor/preference/Preference;->mIsIndicator:Z

    .line 118
    iput-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    .line 120
    iput-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    .line 123
    iput-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyMet:Z

    .line 124
    iput-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mParentDependencyMet:Z

    .line 126
    iput v4, p0, Lcom/zte/mifavor/preference/Preference;->mHight:I

    .line 127
    iput v4, p0, Lcom/zte/mifavor/preference/Preference;->mWidth:I

    .line 132
    iput-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    .line 134
    sget v3, Lcom/zte/extres/R$layout;->preference:I

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    .line 136
    iput-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 223
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    .line 225
    sget-object v3, Lcom/zte/extres/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 229
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_f

    .line 230
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 231
    .local v1, "attr":I
    const-string v3, "guojingdong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preference attr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a.getIndexCount()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_icon:I

    if-ne v1, v3, :cond_1

    .line 235
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    .line 229
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 237
    :cond_1
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_key:I

    if-ne v1, v3, :cond_2

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 240
    :cond_2
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_title:I

    if-ne v1, v3, :cond_3

    .line 241
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 244
    :cond_3
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_summary:I

    if-ne v1, v3, :cond_4

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 247
    :cond_4
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_order:I

    if-ne v1, v3, :cond_5

    .line 248
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    goto :goto_1

    .line 250
    :cond_5
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_fragment:I

    if-ne v1, v3, :cond_6

    .line 251
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 253
    :cond_6
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_layout:I

    if-ne v1, v3, :cond_7

    .line 254
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    goto :goto_1

    .line 256
    :cond_7
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_widgetLayout:I

    if-ne v1, v3, :cond_8

    .line 257
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 259
    :cond_8
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_enabled:I

    if-ne v1, v3, :cond_9

    .line 260
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    goto :goto_1

    .line 262
    :cond_9
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_selectable:I

    if-ne v1, v3, :cond_a

    .line 263
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    goto :goto_1

    .line 265
    :cond_a
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_persistent:I

    if-ne v1, v3, :cond_b

    .line 266
    iget-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    goto :goto_1

    .line 268
    :cond_b
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_dependency:I

    if-ne v1, v3, :cond_c

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto/16 :goto_1

    .line 271
    :cond_c
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_defaultValue:I

    if-ne v1, v3, :cond_d

    .line 272
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto/16 :goto_1

    .line 274
    :cond_d
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_shouldDisableView:I

    if-ne v1, v3, :cond_e

    .line 275
    iget-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    goto/16 :goto_1

    .line 277
    :cond_e
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_isIndicator:I

    if-ne v1, v3, :cond_0

    .line 278
    sget v3, Lcom/zte/extres/R$styleable;->Preference_android_isIndicator:I

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mIsIndicator:Z

    .line 279
    const-string v3, "guojingdong"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/zte/extres/R$styleable;->Preference_android_isIndicator:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Preference mIsIndicator="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/zte/mifavor/preference/Preference;->mIsIndicator:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 306
    .end local v1    # "attr":I
    :cond_f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.mifavor.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.mifavor.widget"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 312
    iput-boolean v7, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 314
    :cond_10
    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1458
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1459
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1460
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1461
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/zte/mifavor/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1466
    :cond_1
    :goto_0
    return-void

    .line 1464
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/mifavor/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1276
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1285
    :goto_0
    return-void

    .line 1278
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 1279
    .local v0, "preference":Lcom/zte/mifavor/preference/Preference;
    if-eqz v0, :cond_1

    .line 1280
    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/Preference;->registerDependent(Lcom/zte/mifavor/preference/Preference;)V

    goto :goto_0

    .line 1282
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/zte/mifavor/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    .line 1328
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1330
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/zte/mifavor/preference/Preference;->onDependencyChanged(Lcom/zte/mifavor/preference/Preference;Z)V

    .line 1331
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 646
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 648
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 649
    check-cast v1, Landroid/view/ViewGroup;

    .line 650
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 651
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/zte/mifavor/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 650
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 654
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1489
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1491
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1492
    :catch_0
    move-exception v0

    .line 1496
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1288
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1289
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 1290
    .local v0, "oldDependency":Lcom/zte/mifavor/preference/Preference;
    if-eqz v0, :cond_0

    .line 1291
    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/Preference;->unregisterDependent(Lcom/zte/mifavor/preference/Preference;)V

    .line 1294
    .end local v0    # "oldDependency":Lcom/zte/mifavor/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/zte/mifavor/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1345
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mOnChangeListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mOnChangeListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/zte/mifavor/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 1783
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    return v0
.end method

.method public compareTo(Lcom/zte/mifavor/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 1193
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1195
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1205
    :goto_0
    return v0

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1198
    const/4 v0, 0x0

    goto :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1200
    const/4 v0, 0x1

    goto :goto_0

    .line 1201
    :cond_2
    iget-object v0, p1, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1202
    const/4 v0, -0x1

    goto :goto_0

    .line 1205
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 85
    check-cast p1, Lcom/zte/mifavor/preference/Preference;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/Preference;->compareTo(Lcom/zte/mifavor/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1895
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1896
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1897
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1898
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1899
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1900
    iget-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1901
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1906
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1842
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1843
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1844
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1845
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1846
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1849
    :cond_0
    if-eqz v0, :cond_1

    .line 1850
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1853
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/zte/mifavor/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1308
    :cond_0
    const/4 v0, 0x0

    .line 1311
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1162
    const/4 v0, 0x0

    .line 1165
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 430
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1803
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1804
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1805
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1806
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1808
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1809
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1812
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1814
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1816
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 913
    iget-wide v0, p0, Lcom/zte/mifavor/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mOnChangeListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 686
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1775
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1779
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1691
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":F
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1643
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1647
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":I
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1731
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1735
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultReturnValue":J
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1544
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1599
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1603
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    .line 1138
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 517
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 519
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 520
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 499
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 857
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 878
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/zte/mifavor/preference/Preference;)V

    .line 1226
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    .line 1357
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1365
    :cond_0
    return-void

    .line 1361
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1362
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1363
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/zte/mifavor/preference/Preference;->onDependencyChanged(Lcom/zte/mifavor/preference/Preference;Z)V

    .line 1362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/zte/mifavor/preference/Preference;)V

    .line 1237
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1271
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->registerDependency()V

    .line 1272
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/zte/mifavor/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/zte/mifavor/preference/PreferenceManager;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    .line 1257
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/mifavor/preference/Preference;->mId:J

    .line 1259
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->dispatchSetInitialValue()V

    .line 1260
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v13, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 566
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 567
    .local v6, "titleView":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 568
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 569
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 570
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 577
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 578
    .local v4, "summaryView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 580
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 581
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 588
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v7, 0x1020006

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mImageView:Landroid/widget/ImageView;

    .line 589
    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mImageView:Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    .line 590
    iget v7, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 591
    :cond_2
    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_3

    .line 592
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v7, v10, :cond_b

    .line 593
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v10, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 598
    :cond_3
    :goto_2
    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 599
    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mImageView:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 600
    iget v7, p0, Lcom/zte/mifavor/preference/Preference;->mWidth:I

    if-lez v7, :cond_4

    iget v7, p0, Lcom/zte/mifavor/preference/Preference;->mHight:I

    if-lez v7, :cond_4

    .line 603
    const-string v7, "preferecne"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IMAGE width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/zte/mifavor/preference/Preference;->mWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/zte/mifavor/preference/Preference;->mHight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mImageView:Landroid/widget/ImageView;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    iget v11, p0, Lcom/zte/mifavor/preference/Preference;->mWidth:I

    iget v12, p0, Lcom/zte/mifavor/preference/Preference;->mHight:I

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    :cond_4
    iget-object v10, p0, Lcom/zte/mifavor/preference/Preference;->mImageView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_c

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    :cond_5
    sget v7, Lcom/zte/extres/R$id;->icon_frame:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 612
    .local v1, "imageFrame":Landroid/view/View;
    if-eqz v1, :cond_6

    .line 613
    iget-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_d

    move v7, v8

    :goto_4
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 615
    :cond_6
    sget v7, Lcom/zte/extres/R$id;->indicator:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 618
    .local v2, "imageIndicator":Landroid/view/View;
    if-eqz v2, :cond_7

    .line 619
    iget-boolean v7, p0, Lcom/zte/mifavor/preference/Preference;->mIsIndicator:Z

    if-ne v7, v13, :cond_e

    iget-boolean v7, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    if-nez v7, :cond_e

    .line 620
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v10, Lcom/zte/extres/R$drawable;->prference_go_disable:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 621
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    move-object v7, v2

    .line 622
    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 629
    :goto_5
    iget-boolean v7, p0, Lcom/zte/mifavor/preference/Preference;->mIsIndicator:Z

    if-ne v7, v13, :cond_f

    :goto_6
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 632
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_7
    iget-boolean v7, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    if-eqz v7, :cond_8

    .line 633
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->isEnabled()Z

    move-result v7

    invoke-direct {p0, p1, v7}, Lcom/zte/mifavor/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 635
    :cond_8
    return-void

    .line 573
    .end local v1    # "imageFrame":Landroid/view/View;
    .end local v2    # "imageIndicator":Landroid/view/View;
    .end local v4    # "summaryView":Landroid/widget/TextView;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 584
    .end local v5    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v4    # "summaryView":Landroid/widget/TextView;
    :cond_a
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 595
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_b
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v10, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    :cond_c
    move v7, v9

    .line 608
    goto :goto_3

    .restart local v1    # "imageFrame":Landroid/view/View;
    :cond_d
    move v7, v9

    .line 613
    goto :goto_4

    .line 625
    .restart local v2    # "imageIndicator":Landroid/view/View;
    :cond_e
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v10, Lcom/zte/extres/R$drawable;->prference_go:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 626
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    move-object v7, v2

    .line 627
    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_f
    move v8, v9

    .line 629
    goto :goto_6
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 537
    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 540
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 542
    .local v0, "layout":Landroid/view/View;
    const v3, 0x1020018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 544
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 545
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_1

    .line 546
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 551
    :cond_0
    :goto_0
    return-object v0

    .line 548
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Lcom/zte/mifavor/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1374
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1375
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyMet:Z

    .line 1378
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->notifyDependencyChange(Z)V

    .line 1380
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 1382
    :cond_0
    return-void

    .line 1375
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 383
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1101
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Lcom/zte/mifavor/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1391
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1392
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mParentDependencyMet:Z

    .line 1395
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->notifyDependencyChange(Z)V

    .line 1397
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 1399
    :cond_0
    return-void

    .line 1392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1442
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->unregisterDependency()V

    .line 1443
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1920
    sget-object v0, Lcom/zte/mifavor/preference/Preference$BaseSavedState;->EMPTY_STATE:Lcom/zte/mifavor/preference/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1921
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1923
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1869
    sget-object v0, Lcom/zte/mifavor/preference/Preference$BaseSavedState;->EMPTY_STATE:Lcom/zte/mifavor/preference/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1486
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Lcom/zte/mifavor/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    .line 1067
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->onClick()V

    .line 1073
    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1077
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v2

    .line 1078
    .local v2, "preferenceManager":Lcom/zte/mifavor/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 1079
    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1081
    .local v1, "listener":Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/zte/mifavor/preference/PreferenceScreen;Lcom/zte/mifavor/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1087
    .end local v1    # "listener":Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1088
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1089
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1749
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1750
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1760
    :goto_0
    return v2

    .line 1755
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1756
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1757
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1760
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1661
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1662
    const/high16 v2, 0x7fc00000    # NaNf

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1672
    :goto_0
    return v1

    .line 1667
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1668
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1669
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1672
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1617
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1618
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1628
    :goto_0
    return v1

    .line 1623
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1624
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1625
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1628
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    .line 1705
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1706
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1716
    :goto_0
    return v1

    .line 1711
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1712
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1713
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1716
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1515
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1517
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1527
    :goto_0
    return v1

    .line 1522
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1523
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1524
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1527
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1567
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1569
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1579
    :goto_0
    return v1

    .line 1574
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1575
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1576
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1579
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 958
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 961
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mRequiresKey:Z

    .line 962
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1881
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1882
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1828
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1829
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    .line 359
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1454
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1419
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->unregisterDependency()V

    .line 1422
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1423
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->registerDependency()V

    .line 1424
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 841
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 842
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    .line 845
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->notifyDependencyChange(Z)V

    .line 847
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 849
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mFragment:Ljava/lang/String;

    .line 412
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 774
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    .line 776
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 781
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIcon(III)V
    .locals 2
    .param p1, "iconResId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 784
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    .line 786
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 787
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/zte/mifavor/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;II)V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/zte/mifavor/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;II)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 746
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 747
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 749
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 751
    :cond_2
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 754
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 755
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 757
    const-string v0, "preferecne"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetICon width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iput p3, p0, Lcom/zte/mifavor/preference/Preference;->mHight:I

    .line 760
    iput p2, p0, Lcom/zte/mifavor/preference/Preference;->mWidth:I

    .line 764
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 766
    :cond_2
    return-void
.end method

.method public setIndicatorVisible(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 639
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mIsIndicator:Z

    .line 640
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 641
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 394
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 932
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    .line 934
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->requireKey()V

    .line 937
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 458
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 463
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    .line 464
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1217
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mOnChangeListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    .line 1027
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    .line 1046
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 670
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 671
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    .line 674
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyHierarchyChanged()V

    .line 676
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 1004
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    .line 1005
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 867
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    .line 868
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 870
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 893
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    .line 894
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 895
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 831
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 832
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 818
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 819
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 820
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 822
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 712
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 713
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    .line 714
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 698
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 699
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    .line 700
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 701
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 703
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 486
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 490
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    .line 491
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    .line 1181
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1408
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
