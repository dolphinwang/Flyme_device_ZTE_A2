.class public final Lcom/zte/mifavor/preference/PreferenceScreen;
.super Lcom/zte/mifavor/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field flag:I

.field mBackground:Landroid/widget/LinearLayout;

.field mColor:I

.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 125
    sget v0, Lcom/zte/extres/R$attr;->preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/zte/mifavor/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->flag:I

    .line 126
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mBackground:Landroid/widget/LinearLayout;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/preference/PreferenceScreen;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/preference/PreferenceScreen;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 186
    .local v3, "context":Landroid/content/Context;
    iget-object v9, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_0

    .line 187
    iget-object v9, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 190
    :cond_0
    const-string v9, "layout_inflater"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 192
    .local v7, "inflater":Landroid/view/LayoutInflater;
    sget v9, Lcom/zte/extres/R$layout;->preference_list_fragment:I

    invoke-virtual {v7, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 194
    .local v2, "childPrefScreen":Landroid/view/View;
    const v9, 0x102000a

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 195
    iget-object v9, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v9}, Lcom/zte/mifavor/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 198
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    .line 199
    .local v8, "title":Ljava/lang/CharSequence;
    new-instance v5, Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v9

    invoke-direct {v5, v3, v9}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 200
    .local v5, "dialog":Landroid/app/Dialog;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 201
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/view/Window;->requestFeature(I)Z

    .line 206
    :goto_0
    iget v9, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->flag:I

    if-ne v9, v12, :cond_4

    .line 234
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    iget v10, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mColor:I

    invoke-virtual {v9, v10}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 235
    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 240
    :goto_1
    invoke-virtual {v5, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 241
    if-eqz p1, :cond_1

    .line 242
    invoke-virtual {v5, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/zte/mifavor/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 248
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 249
    invoke-virtual {v5}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->flag:I

    if-ne v9, v12, :cond_2

    .line 251
    invoke-virtual {v5}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    iget v11, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mColor:I

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-virtual {v5}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 254
    invoke-virtual {v5}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 255
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const-string v10, "action_bar"

    const-string v11, "id"

    const-string v12, "android"

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 257
    .local v1, "actionbarId":I
    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    .line 258
    .local v4, "decor":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 260
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/zte/extres/R$drawable;->ic_ab_back_material:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 261
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/zte/extres/R$color;->mfv_common_acb_icon:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 262
    invoke-virtual {v5}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 263
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 264
    .local v0, "actionBarView":Landroid/view/ViewGroup;
    if-nez v0, :cond_5

    .line 290
    .end local v0    # "actionBarView":Landroid/view/ViewGroup;
    .end local v1    # "actionbarId":I
    .end local v4    # "decor":Landroid/view/View;
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    return-void

    .line 203
    :cond_3
    invoke-virtual {v5, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    invoke-virtual {v5, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_1

    .line 270
    .restart local v0    # "actionBarView":Landroid/view/ViewGroup;
    .restart local v1    # "actionbarId":I
    .restart local v4    # "decor":Landroid/view/View;
    .restart local v6    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/zte/extres/R$color;->mfv_common_acb_icon:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {p0, v0, v9, v10}, Lcom/zte/mifavor/preference/PreferenceScreen;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 272
    new-instance v9, Lcom/zte/mifavor/preference/PreferenceScreen$1;

    invoke-direct {v9, p0, v3}, Lcom/zte/mifavor/preference/PreferenceScreen$1;-><init>(Lcom/zte/mifavor/preference/PreferenceScreen;Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_2
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 169
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 170
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 173
    return-void
.end method

.method public dpToPx(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 158
    new-instance v0, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/preference/PreferenceGroupAdapter;-><init>(Lcom/zte/mifavor/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 374
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getPreferenceManager()Lcom/zte/mifavor/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 375
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 388
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 389
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 391
    :cond_0
    invoke-virtual {p0}, Lcom/zte/mifavor/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 392
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Lcom/zte/mifavor/preference/Preference;

    if-nez v2, :cond_1

    .line 396
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 394
    check-cast v1, Lcom/zte/mifavor/preference/Preference;

    .line 395
    .local v1, "preference":Lcom/zte/mifavor/preference/Preference;
    invoke-virtual {v1, p0}, Lcom/zte/mifavor/preference/Preference;->performClick(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 419
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 421
    :cond_0
    invoke-super {p0, p1}, Lcom/zte/mifavor/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 430
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 425
    check-cast v0, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;

    .line 426
    .local v0, "myState":Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/zte/mifavor/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 427
    iget-boolean v1, v0, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, v0, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 405
    invoke-super {p0}, Lcom/zte/mifavor/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 406
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 407
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 414
    :goto_0
    return-object v1

    .line 411
    :cond_1
    new-instance v1, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 412
    .local v1, "myState":Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 413
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Lcom/zte/mifavor/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setAllChildViewsColor(Landroid/view/View;II)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "textColor"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 296
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v5, p1

    .line 297
    check-cast v5, Landroid/view/ViewGroup;

    .line 298
    .local v5, "vp":Landroid/view/ViewGroup;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "search_bar"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 299
    .local v3, "searchId":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    if-ne v3, v6, :cond_1

    .line 361
    .end local v3    # "searchId":I
    .end local v5    # "vp":Landroid/view/ViewGroup;
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 303
    .restart local v3    # "searchId":I
    .restart local v5    # "vp":Landroid/view/ViewGroup;
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Lcom/zte/mifavor/preference/PreferenceScreen$2;

    invoke-direct {v6, p0, p2, p3}, Lcom/zte/mifavor/preference/PreferenceScreen$2;-><init>(Lcom/zte/mifavor/preference/PreferenceScreen;II)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 320
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 321
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 322
    .local v4, "viewchild":Landroid/view/View;
    invoke-virtual {p0, v4, p2, p3}, Lcom/zte/mifavor/preference/PreferenceScreen;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 320
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 328
    .end local v2    # "i":I
    .end local v3    # "searchId":I
    .end local v4    # "viewchild":Landroid/view/View;
    .end local v5    # "vp":Landroid/view/ViewGroup;
    :cond_2
    instance-of v6, p1, Landroid/widget/ImageButton;

    if-eqz v6, :cond_3

    .line 329
    new-instance v6, Lcom/zte/mifavor/preference/PreferenceScreen$3;

    invoke-direct {v6, p0}, Lcom/zte/mifavor/preference/PreferenceScreen$3;-><init>(Lcom/zte/mifavor/preference/PreferenceScreen;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    :cond_3
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    move-object v6, p1

    .line 339
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 341
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 342
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 343
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 346
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    move-object v6, p1

    .line 348
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 349
    const-string v6, "guojingdong"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preferencescreen textColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p1

    .line 351
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 352
    .local v0, "dras":[Landroid/graphics/drawable/Drawable;
    aget-object v6, v0, v9

    if-eqz v6, :cond_0

    .line 353
    aget-object v6, v0, v9

    invoke-virtual {v6, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 354
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    aget-object v6, v0, v9

    invoke-virtual {p1, v6, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 367
    iput p1, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->mColor:I

    .line 368
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen;->flag:I

    .line 370
    return-void
.end method
