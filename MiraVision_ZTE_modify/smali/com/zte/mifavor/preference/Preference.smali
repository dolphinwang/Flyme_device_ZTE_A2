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

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

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


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 343
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 331
    sget v0, Lcom/zte/extres/R$attr;->preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 332
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zte/mifavor/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const v3, 0x7fffffff

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    .line 114
    iput-boolean v4, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    .line 115
    iput-boolean v4, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    .line 117
    iput-boolean v4, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    .line 120
    iput-boolean v4, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyMet:Z

    .line 121
    iput-boolean v4, p0, Lcom/zte/mifavor/preference/Preference;->mParentDependencyMet:Z

    .line 126
    iput-boolean v4, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    .line 128
    sget v3, Lcom/zte/extres/R$layout;->preference:I

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    .line 130
    iput-boolean v4, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 217
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    .line 219
    sget-object v3, Lcom/zte/extres/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 221
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 222
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 223
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 221
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 225
    :pswitch_0
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    goto :goto_1

    .line 229
    :pswitch_1
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    goto :goto_1

    .line 233
    :pswitch_2
    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 238
    :pswitch_3
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    goto :goto_1

    .line 242
    :pswitch_4
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    goto :goto_1

    .line 246
    :pswitch_5
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mFragment:Ljava/lang/String;

    goto :goto_1

    .line 250
    :pswitch_6
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    goto :goto_1

    .line 254
    :pswitch_7
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    goto :goto_1

    .line 258
    :pswitch_8
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    goto :goto_1

    .line 262
    :pswitch_9
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    goto :goto_1

    .line 266
    :pswitch_a
    iget-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    goto :goto_1

    .line 270
    :pswitch_b
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    goto :goto_1

    .line 274
    :pswitch_c
    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_1

    .line 278
    :pswitch_d
    iget-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    goto :goto_1

    .line 282
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 284
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.mifavor.preference"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.zte.mifavor.widget"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 288
    iput-boolean v5, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 290
    :cond_1
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_6
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_5
    .end packed-switch
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1384
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1385
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1387
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/zte/mifavor/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1392
    :cond_1
    :goto_0
    return-void

    .line 1390
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/zte/mifavor/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1204
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 1205
    .local v0, "preference":Lcom/zte/mifavor/preference/Preference;
    if-eqz v0, :cond_1

    .line 1206
    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/Preference;->registerDependent(Lcom/zte/mifavor/preference/Preference;)V

    goto :goto_0

    .line 1208
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
    .line 1250
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1256
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/zte/mifavor/preference/Preference;->onDependencyChanged(Lcom/zte/mifavor/preference/Preference;Z)V

    .line 1257
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 595
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 597
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 598
    check-cast v1, Landroid/view/ViewGroup;

    .line 599
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 600
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/zte/mifavor/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 599
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 603
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1415
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1417
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1418
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1214
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/zte/mifavor/preference/Preference;

    move-result-object v0

    .line 1216
    .local v0, "oldDependency":Lcom/zte/mifavor/preference/Preference;
    if-eqz v0, :cond_0

    .line 1217
    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/Preference;->unregisterDependent(Lcom/zte/mifavor/preference/Preference;)V

    .line 1220
    .end local v0    # "oldDependency":Lcom/zte/mifavor/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/zte/mifavor/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1271
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 942
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
    .line 1709
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    return v0
.end method

.method public compareTo(Lcom/zte/mifavor/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 1119
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1121
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1131
    :goto_0
    return v0

    .line 1122
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1124
    const/4 v0, 0x0

    goto :goto_0

    .line 1125
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1126
    const/4 v0, 0x1

    goto :goto_0

    .line 1127
    :cond_2
    iget-object v0, p1, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1128
    const/4 v0, -0x1

    goto :goto_0

    .line 1131
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
    .line 83
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
    .line 1821
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1822
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1823
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1824
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1825
    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1826
    iget-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1827
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1832
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1768
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1769
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1770
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1771
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1772
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1775
    :cond_0
    if-eqz v0, :cond_1

    .line 1776
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1779
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/zte/mifavor/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1234
    :cond_0
    const/4 v0, 0x0

    .line 1237
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
    .line 1039
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1088
    const/4 v0, 0x0

    .line 1091
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
    .line 405
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 406
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1730
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1731
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1732
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1734
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1735
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1738
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1740
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1742
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 839
    iget-wide v0, p0, Lcom/zte/mifavor/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mOnChangeListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1701
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1705
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
    .line 1613
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
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
    .line 1569
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1573
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
    .line 1657
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1661
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
    .line 1470
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1474
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
    .line 1525
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1529
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
    .line 1171
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1061
    const/4 v0, 0x0

    .line 1064
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
    .line 829
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 673
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 492
    if-nez p1, :cond_0

    .line 493
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 495
    :cond_0
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 496
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 475
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 896
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
    .line 783
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
    .line 906
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/zte/mifavor/preference/Preference;)V

    .line 1152
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1281
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependents:Ljava/util/List;

    .line 1283
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lcom/zte/mifavor/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1291
    :cond_0
    return-void

    .line 1287
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1288
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1289
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/zte/mifavor/preference/Preference;->onDependencyChanged(Lcom/zte/mifavor/preference/Preference;Z)V

    .line 1288
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/zte/mifavor/preference/Preference;)V

    .line 1163
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1197
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->registerDependency()V

    .line 1198
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/zte/mifavor/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/zte/mifavor/preference/PreferenceManager;

    .prologue
    .line 1181
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    .line 1183
    invoke-virtual {p1}, Lcom/zte/mifavor/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zte/mifavor/preference/Preference;->mId:J

    .line 1185
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->dispatchSetInitialValue()V

    .line 1186
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 542
    const v6, 0x1020016

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 543
    .local v5, "titleView":Landroid/widget/TextView;
    if-eqz v5, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 545
    .local v4, "title":Ljava/lang/CharSequence;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 546
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 554
    .local v3, "summaryView":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 555
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 556
    .local v2, "summary":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 557
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 558
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    .end local v2    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v6, 0x1020006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 565
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 566
    iget v6, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 567
    :cond_2
    iget-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_3

    .line 568
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v6, v9, :cond_a

    .line 569
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v9, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 574
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    .line 575
    iget-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 578
    :cond_4
    iget-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_b

    move v6, v7

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    :cond_5
    sget v6, Lcom/zte/extres/R$id;->icon_frame:I

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 582
    .local v0, "imageFrame":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 583
    iget-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :cond_6
    iget-boolean v6, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    if-eqz v6, :cond_7

    .line 587
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->isEnabled()Z

    move-result v6

    invoke-direct {p0, p1, v6}, Lcom/zte/mifavor/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 589
    :cond_7
    return-void

    .line 549
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v3    # "summaryView":Landroid/widget/TextView;
    .restart local v4    # "title":Ljava/lang/CharSequence;
    :cond_8
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 560
    .end local v4    # "title":Ljava/lang/CharSequence;
    .restart local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v3    # "summaryView":Landroid/widget/TextView;
    :cond_9
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 571
    .end local v2    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_a
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v9, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_b
    move v6, v8

    .line 578
    goto :goto_3

    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_c
    move v7, v8

    .line 583
    goto :goto_4
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 849
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 513
    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 516
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 518
    .local v0, "layout":Landroid/view/View;
    const v3, 0x1020018

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 520
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 521
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_1

    .line 522
    iget v3, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 527
    :cond_0
    :goto_0
    return-object v0

    .line 524
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
    .line 1300
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1301
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyMet:Z

    .line 1304
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->notifyDependencyChange(Z)V

    .line 1306
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 1308
    :cond_0
    return-void

    .line 1301
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1027
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Lcom/zte/mifavor/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1317
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1318
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mParentDependencyMet:Z

    .line 1321
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->notifyDependencyChange(Z)V

    .line 1323
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 1325
    :cond_0
    return-void

    .line 1318
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1368
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->unregisterDependency()V

    .line 1369
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1846
    sget-object v0, Lcom/zte/mifavor/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1847
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1849
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1794
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mBaseMethodCalled:Z

    .line 1795
    sget-object v0, Lcom/zte/mifavor/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1412
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Lcom/zte/mifavor/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->onClick()V

    .line 999
    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1003
    :cond_2
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v2

    .line 1004
    .local v2, "preferenceManager":Lcom/zte/mifavor/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 1005
    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1007
    .local v1, "listener":Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    invoke-interface {v1, p1, p0}, Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/zte/mifavor/preference/PreferenceScreen;Lcom/zte/mifavor/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1013
    .end local v1    # "listener":Lcom/zte/mifavor/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/zte/mifavor/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1015
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

    .line 1675
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1676
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/zte/mifavor/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1686
    :goto_0
    return v2

    .line 1681
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1686
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1587
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1588
    const/high16 v2, 0x7fc00000    # NaNf

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1598
    :goto_0
    return v1

    .line 1593
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1594
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1595
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1598
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

    .line 1543
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1544
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1554
    :goto_0
    return v1

    .line 1549
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1550
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1551
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1554
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

    .line 1631
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1632
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/zte/mifavor/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1642
    :goto_0
    return v1

    .line 1637
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1638
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1639
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1642
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

    .line 1441
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1443
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_0

    .line 1453
    :goto_0
    return v1

    .line 1448
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1449
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1450
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1453
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

    .line 1493
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1495
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/zte/mifavor/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1505
    :goto_0
    return v1

    .line 1500
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/zte/mifavor/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1501
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1502
    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1505
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mRequiresKey:Z

    .line 888
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1807
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1808
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1754
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1755
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    .line 335
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1379
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1380
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->unregisterDependency()V

    .line 1348
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1349
    invoke-direct {p0}, Lcom/zte/mifavor/preference/Preference;->registerDependency()V

    .line 1350
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 768
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mEnabled:Z

    .line 771
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->notifyDependencyChange(Z)V

    .line 773
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 775
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mFragment:Ljava/lang/String;

    .line 388
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 709
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mIconResId:I

    .line 711
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 695
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 696
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 698
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 700
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 369
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 370
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 858
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mKey:Ljava/lang/String;

    .line 860
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 861
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->requireKey()V

    .line 863
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 434
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 439
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mLayoutResId:I

    .line 440
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1143
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mOnChangeListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;

    .line 953
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mOnClickListener:Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;

    .line 972
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 619
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 620
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mOrder:I

    .line 623
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyHierarchyChanged()V

    .line 625
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 930
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mPersistent:Z

    .line 931
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 793
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mSelectable:Z

    .line 794
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 796
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 819
    iput-boolean p1, p0, Lcom/zte/mifavor/preference/Preference;->mShouldDisableView:Z

    .line 820
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 821
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 758
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 744
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 745
    :cond_1
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 746
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 748
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 661
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 662
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    .line 663
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 647
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 648
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/preference/Preference;->mTitleRes:I

    .line 649
    iput-object p1, p0, Lcom/zte/mifavor/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 650
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->notifyChanged()V

    .line 652
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 462
    iget v0, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/mifavor/preference/Preference;->mCanRecycleLayout:Z

    .line 466
    :cond_0
    iput p1, p0, Lcom/zte/mifavor/preference/Preference;->mWidgetLayoutResId:I

    .line 467
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/zte/mifavor/preference/Preference;->mPreferenceManager:Lcom/zte/mifavor/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1104
    const/4 v0, 0x0

    .line 1107
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
    .line 1334
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
    .line 919
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
    .line 1714
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
