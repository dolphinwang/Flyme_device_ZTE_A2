.class public Lcom/zte/mifavor/widget/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 375
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    .line 391
    iput p2, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->mTheme:I

    .line 392
    return-void
.end method


# virtual methods
.method public create()Lcom/zte/mifavor/widget/AlertDialog;
    .locals 4

    .prologue
    .line 962
    new-instance v0, Lcom/zte/mifavor/widget/AlertDialog;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 963
    .local v0, "dialog":Lcom/zte/mifavor/widget/AlertDialog;
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    # getter for: Lcom/zte/mifavor/widget/AlertDialog;->mAlert:Lcom/zte/mifavor/widget/AlertController;
    invoke-static {v0}, Lcom/zte/mifavor/widget/AlertDialog;->access$000(Lcom/zte/mifavor/widget/AlertDialog;)Lcom/zte/mifavor/widget/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/widget/AlertController$AlertParams;->apply(Lcom/zte/mifavor/widget/AlertController;)V

    .line 964
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setCancelable(Z)V

    .line 965
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 966
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 968
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 969
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 970
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 971
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 973
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v0, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 655
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 656
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 657
    return-object p0
.end method

.method public setCancelable(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 578
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCancelable:Z

    .line 579
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 674
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 675
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 676
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 677
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 439
    return-object p0
.end method

.method public setIcon(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    .line 469
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 479
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 488
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 489
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 490
    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIconId:I

    .line 491
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 942
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 943
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 627
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 628
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 629
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 640
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 641
    return-object p0
.end method

.method public setMessage(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 448
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 449
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 458
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 459
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 701
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 702
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    .line 703
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 704
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 755
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p4, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 756
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 757
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 758
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 759
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 727
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 728
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItems:[Z

    .line 729
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 730
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 528
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 529
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 530
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 542
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 543
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 555
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 556
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 568
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 569
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 597
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 607
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 866
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 617
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 503
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 504
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 516
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 517
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 950
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 951
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 780
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 781
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 782
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 783
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 805
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p4, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 806
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 807
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 808
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 809
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 850
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 851
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 852
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 853
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 827
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 828
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 829
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mCheckedItem:I

    .line 830
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 831
    return-object p0
.end method

.method public setTitle(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 412
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iget-object v1, v1, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 413
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 423
    return-object p0
.end method

.method public setView(I)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 878
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 879
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    .line 880
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 881
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 893
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 894
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    .line 895
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 896
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/zte/mifavor/widget/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 923
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput-object p1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 924
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewLayoutResId:I

    .line 925
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 926
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p2, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 927
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p3, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingTop:I

    .line 928
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p4, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingRight:I

    .line 929
    iget-object v0, p0, Lcom/zte/mifavor/widget/AlertDialog$Builder;->P:Lcom/zte/mifavor/widget/AlertController$AlertParams;

    iput p5, v0, Lcom/zte/mifavor/widget/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 930
    return-object p0
.end method

.method public show()Lcom/zte/mifavor/widget/AlertDialog;
    .locals 1

    .prologue
    .line 981
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/AlertDialog$Builder;->create()Lcom/zte/mifavor/widget/AlertDialog;

    move-result-object v0

    .line 982
    .local v0, "dialog":Lcom/zte/mifavor/widget/AlertDialog;
    invoke-virtual {v0}, Lcom/zte/mifavor/widget/AlertDialog;->show()V

    .line 983
    return-object v0
.end method
