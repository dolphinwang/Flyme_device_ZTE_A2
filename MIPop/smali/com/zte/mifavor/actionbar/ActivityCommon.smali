.class public Lcom/zte/mifavor/actionbar/ActivityCommon;
.super Ljava/lang/Object;
.source "ActivityCommon.java"

# interfaces
.implements Lcom/zte/mifavor/actionbar/ActionBarCallBack;
.implements Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;,
        Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;
    }
.end annotation


# static fields
.field public static LEFT_BUTTON:I

.field public static RIGHT_BUTTON:I


# instance fields
.field actionBarView:Landroid/view/ViewGroup;

.field attachWindow:I

.field initActionBarFlag:I

.field judgeHasActionbar:I

.field private mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

.field private mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;

.field mActivity:Landroid/app/Activity;

.field mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

.field private mContext:Landroid/content/Context;

.field public mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

.field private mHasActionbar:I

.field private mInvalidatePanelMenuPosted:Z

.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

.field private mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

.field private mOriginHasActionbar:I

.field private mView:Landroid/view/View;

.field phoneWindow:Landroid/view/Window;

.field phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->LEFT_BUTTON:I

    .line 55
    const/4 v0, 0x1

    sput v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->RIGHT_BUTTON:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1, "a"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    .line 47
    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mHasActionbar:I

    .line 50
    iput-boolean v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mInvalidatePanelMenuPosted:Z

    .line 52
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    .line 56
    iput v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->initActionBarFlag:I

    .line 57
    new-instance v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;-><init>(Lcom/zte/mifavor/actionbar/ActivityCommon;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    .line 59
    iput v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->judgeHasActionbar:I

    .line 61
    iput-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    .line 62
    iput v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow:I

    .line 64
    new-instance v0, Lcom/zte/mifavor/actionbar/ActivityCommon$1;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/actionbar/ActivityCommon$1;-><init>(Lcom/zte/mifavor/actionbar/ActivityCommon;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    .line 77
    new-instance v0, Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-direct {v0, p1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .line 78
    iput-object p1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/zte/mifavor/actionbar/ActivityCommon;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/actionbar/ActivityCommon;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mInvalidatePanelMenuPosted:Z

    return p1
.end method


# virtual methods
.method public NavButtonClick()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 302
    new-instance v0, Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    const v3, 0x102002c

    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 304
    .local v0, "mNavItem":Lcom/zte/mifavor/actionbar/menu/ActionMenuItem;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    .line 306
    return-void
.end method

.method public SetBottomBarVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 464
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomBarVisible(Z)V

    .line 472
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput-boolean p1, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->visible:Z

    .line 469
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    const/4 v1, 0x1

    iput v1, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    goto :goto_0
.end method

.method public SetBottomButtonEnable(IZ)V
    .locals 2
    .param p1, "poistion"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 492
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonEnable(IZ)V

    .line 505
    :goto_0
    return-void

    .line 496
    :cond_0
    sget v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->LEFT_BUTTON:I

    if-ne v0, p1, :cond_1

    .line 497
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput-boolean p2, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftEnable:Z

    .line 502
    :goto_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    const/4 v1, 0x1

    iput v1, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    goto :goto_0

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput-boolean p2, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightEnable:Z

    goto :goto_1
.end method

.method public SetBottomButtonText(ILjava/lang/String;)V
    .locals 3
    .param p1, "poistion"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonText(ILjava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 513
    :cond_0
    sget v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->LEFT_BUTTON:I

    if-ne v0, p1, :cond_1

    .line 514
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput-object p2, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftTitle:Ljava/lang/String;

    .line 520
    :goto_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    const/4 v1, 0x1

    iput v1, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    .line 521
    const-string v0, "guojingdong"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetBottomButtonText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iget v2, v2, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput-object p2, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public SetBottomButtonVisible(IZ)V
    .locals 2
    .param p1, "poistion"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 475
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v0, p1, p2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->SetBottomButtonVisible(IZ)V

    .line 488
    :goto_0
    return-void

    .line 479
    :cond_0
    sget v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->LEFT_BUTTON:I

    if-ne v0, p1, :cond_1

    .line 480
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput-boolean p2, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->leftVisible:Z

    .line 485
    :goto_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    const/4 v1, 0x1

    iput v1, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    goto :goto_0

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput-boolean p2, v0, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->rightVisible:Z

    goto :goto_1
.end method

.method public addBottomBarOptionMenu(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 447
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 449
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v1, p1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->addBottomBarOptionMenu(I)V

    .line 450
    new-instance v0, Lcom/zte/mifavor/widget/MenuClicker;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/zte/mifavor/widget/MenuClicker;-><init>(Landroid/app/Activity;)V

    .line 451
    .local v0, "mc":Lcom/zte/mifavor/widget/MenuClicker;
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 453
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iget v1, v1, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 454
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->commitUpdate()V

    .line 455
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    const/4 v2, 0x0

    iput v2, v1, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->needUpdate:I

    .line 461
    .end local v0    # "mc":Lcom/zte/mifavor/widget/MenuClicker;
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iput p1, v1, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mResid:I

    goto :goto_0
.end method

.method public attachWindow(Landroid/view/Window;)V
    .locals 15
    .param p1, "win"    # Landroid/view/Window;

    .prologue
    const/4 v13, 0x1

    .line 83
    iget v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow:I

    if-lez v12, :cond_0

    .line 156
    :goto_0
    return-void

    .line 86
    :cond_0
    iput v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->attachWindow:I

    .line 87
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    .line 88
    new-instance v12, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v13, p0}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;-><init>(Landroid/content/Context;Lcom/zte/mifavor/actionbar/ActivityCommon;)V

    iput-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    .line 91
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v13}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->setCallback(Landroid/view/Window$Callback;)V

    .line 92
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v13}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->setOnWindowDismissedCallback(Landroid/view/Window$OnWindowDismissedCallback;)V

    .line 93
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    invoke-virtual {v12}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12, v13}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 94
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v12}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    if-eqz v12, :cond_1

    .line 95
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v13}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v12, v13}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->setSoftInputMode(I)V

    .line 99
    :cond_1
    :try_start_0
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "mUiOptions"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 100
    .local v9, "uo":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 101
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 102
    .local v8, "uio":I
    if-eqz v8, :cond_2

    .line 103
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    invoke-virtual {v12, v8}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->setUiOptions(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .end local v8    # "uio":I
    .end local v9    # "uo":Ljava/lang/reflect/Field;
    :cond_2
    :goto_1
    const/4 v6, 0x0

    .line 110
    .local v6, "mToken":Landroid/os/IBinder;
    const/4 v5, 0x0

    .line 111
    .local v5, "mAppname":Ljava/lang/String;
    const/4 v3, 0x1

    .line 113
    .local v3, "harderWare":Z
    :try_start_1
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "mAppToken"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 115
    .local v7, "token":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 116
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/os/IBinder;

    move-object v6, v0

    .line 117
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "mAppName"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 119
    .local v1, "appname":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 120
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v1, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 121
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    const-string v13, "mHardwareAccelerated"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 123
    .local v4, "hardware":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    invoke-virtual {v4, v12}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    .line 129
    .end local v1    # "appname":Ljava/lang/reflect/Field;
    .end local v4    # "hardware":Ljava/lang/reflect/Field;
    .end local v7    # "token":Ljava/lang/reflect/Field;
    :goto_2
    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    const-string v14, "window"

    invoke-virtual {v12, v14}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-virtual {v13, v12, v6, v5, v3}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;Z)V

    .line 133
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 134
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v13}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->setContainer(Landroid/view/Window;)V

    .line 137
    :cond_3
    :try_start_2
    const-class v12, Landroid/app/Activity;

    const-string v13, "mWindowManager"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 139
    .local v11, "wm":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    invoke-virtual {v13}, Lcom/zte/mifavor/actionbar/PhoneWindowProxy;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 147
    .end local v11    # "wm":Ljava/lang/reflect/Field;
    :goto_3
    :try_start_3
    const-class v12, Landroid/app/Activity;

    const-string v13, "mWindow"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    .line 149
    .local v10, "window":Ljava/lang/reflect/Field;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 150
    iget-object v12, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    iget-object v13, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindowProxy:Lcom/zte/mifavor/actionbar/PhoneWindowProxy;

    invoke-virtual {v10, v12, v13}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 151
    .end local v10    # "window":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    .line 152
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "ActivityCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 105
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "harderWare":Z
    .end local v5    # "mAppname":Ljava/lang/String;
    .end local v6    # "mToken":Landroid/os/IBinder;
    :catch_1
    move-exception v2

    .line 106
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "ActivityCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 125
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "harderWare":Z
    .restart local v5    # "mAppname":Ljava/lang/String;
    .restart local v6    # "mToken":Landroid/os/IBinder;
    :catch_2
    move-exception v2

    .line 126
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "ActivityCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 141
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 142
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v12, "ActivityCommon"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method checkCloseActionMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 334
    :cond_0
    return-void
.end method

.method public getActionBar()Landroid/app/ActionBar;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getOriginHasActionBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->installDecor()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    .line 288
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHasActionBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 214
    iget v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mHasActionbar:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOriginHasActionBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 209
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->isOriginAcitivityHasNoTitle()V

    .line 210
    iget v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->phoneWindow:Landroid/view/Window;

    return-object v0
.end method

.method protected initializePanelMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 338
    new-instance p1, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .end local p1    # "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 339
    .restart local p1    # "menu":Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    invoke-virtual {p1, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->setCallback(Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V

    .line 341
    const/4 v0, 0x1

    return v0
.end method

.method public installDecor()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    const/4 v6, -0x1

    .line 234
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 236
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v4, Lcom/zte/extres/R$layout;->screen_toolbar:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iput-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    .line 239
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v4, v5, p0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->init(Landroid/view/View;Lcom/zte/mifavor/actionbar/ActionBarCallBack;)V

    .line 240
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    iget-boolean v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mInvalidatePanelMenuPosted:Z

    if-nez v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 243
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mInvalidatePanelMenuPosted:Z

    .line 245
    :cond_0
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v0

    .line 247
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/Window;->hasFeature(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v4, v7}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->initFeature(I)V

    .line 253
    :cond_2
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iget-object v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iput-object v5, v4, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    .line 254
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iget v4, v4, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mResid:I

    if-eq v4, v6, :cond_3

    .line 255
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mBottom:Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;

    iget v4, v4, Lcom/zte/mifavor/actionbar/ActivityCommon$BottomButton;->mResid:I

    invoke-virtual {p0, v4}, Lcom/zte/mifavor/actionbar/ActivityCommon;->addBottomBarOptionMenu(I)V

    .line 257
    :cond_3
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 258
    .local v3, "view":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    .line 259
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 261
    .local v1, "contentParent":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .end local v1    # "contentParent":Landroid/view/ViewGroup;
    :cond_4
    return-void
.end method

.method public isOriginAcitivityHasNoTitle()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 160
    iget v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->judgeHasActionbar:I

    if-ne v1, v4, :cond_0

    .line 198
    :goto_0
    return-void

    .line 162
    :cond_0
    iput v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->judgeHasActionbar:I

    .line 163
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/zte/extres/R$styleable;->window:[I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, "ActivityCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window_windowNoTitle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$styleable;->window_android_windowNoTitle:I

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Window_windowActionBar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$styleable;->window_android_windowActionBar:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FEATURE_NO_TITLE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FEATURE_ACTION_BAR="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget v1, Lcom/zte/extres/R$styleable;->window_android_windowNoTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/zte/extres/R$styleable;->window_android_windowActionBar:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_3

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iput v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    goto :goto_0

    .line 188
    :cond_2
    iput v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    .line 189
    iput v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mHasActionbar:I

    goto/16 :goto_0

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 193
    iput v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    .line 194
    iput v5, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mHasActionbar:I

    goto/16 :goto_0

    .line 197
    :cond_4
    iput v4, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    goto/16 :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 725
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-virtual {v0}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onNavigateUp()Z

    move-result v0

    .line 737
    :goto_0
    return v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onNavigateUpFromChild(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 737
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 397
    :cond_0
    return v0
.end method

.method public onMenuModeChange(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .prologue
    .line 404
    return-void
.end method

.method public final preparePanel()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 346
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    if-nez v1, :cond_0

    .line 347
    new-instance v1, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 348
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1, p0}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->setCallback(Lcom/zte/mifavor/actionbar/menu/MenuBuilder$Callback;)V

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;

    if-nez v1, :cond_1

    .line 353
    new-instance v1, Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;

    invoke-direct {v1, p0, v3}, Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;-><init>(Lcom/zte/mifavor/actionbar/ActivityCommon;Lcom/zte/mifavor/actionbar/ActivityCommon$1;)V

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setMenuPrepared()V

    .line 360
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 361
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 365
    :cond_2
    iput-object v3, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    .line 367
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;

    invoke-virtual {v1, v3, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 384
    :goto_0
    return v0

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 373
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-eqz v1, :cond_4

    .line 377
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;

    invoke-virtual {v1, v3, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 379
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zte/mifavor/actionbar/menu/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0

    .line 383
    :cond_5
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mMenu:Lcom/zte/mifavor/actionbar/menu/MenuBuilder;

    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionMenuPresenterCallback:Lcom/zte/mifavor/actionbar/ActivityCommon$ActionMenuPresenterCallback;

    invoke-virtual {v0, v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setMenu(Lcom/zte/mifavor/actionbar/menu/MenuBuilder;Lcom/zte/mifavor/actionbar/menu/MenuPresenter$Callback;)V

    .line 384
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setActionBarContentColor(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "textcolor"    # I

    .prologue
    .line 552
    const/4 v1, 0x1

    iput v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->initActionBarFlag:I

    .line 553
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_1

    .line 583
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v2, Lcom/zte/extres/R$id;->action_bar:I

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->actionBarView:Landroid/view/ViewGroup;

    .line 558
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->actionBarView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 561
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$drawable;->ic_ab_back_material:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 563
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 564
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 566
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->actionBarView:Landroid/view/ViewGroup;

    new-instance v2, Lcom/zte/mifavor/actionbar/ActivityCommon$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon$2;-><init>(Lcom/zte/mifavor/actionbar/ActivityCommon;II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_0
.end method

.method public setActionBarContentStaticColor(II)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "textColor"    # I

    .prologue
    .line 712
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v2, Lcom/zte/extres/R$id;->action_bar:I

    invoke-virtual {v1, v2}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->actionBarView:Landroid/view/ViewGroup;

    .line 713
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->actionBarView:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 721
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$drawable;->ic_ab_back_material:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 718
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 719
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 720
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->actionBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1, p2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setAllViewColor(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public setAllChildViewsColor(Landroid/view/View;II)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "textColor"    # I

    .prologue
    .line 627
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "search_button"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 629
    .local v8, "searchButton":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "search_mag_icon"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 631
    .local v12, "searchMag":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "search_go_btn"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 633
    .local v10, "searchGo":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "search_voice_btn"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 635
    .local v13, "searchVoice":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "search_close_btn"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 638
    .local v9, "searchClose":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v16, p1

    .line 639
    check-cast v16, Landroid/view/ViewGroup;

    .line 640
    .local v16, "vp":Landroid/view/ViewGroup;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "search_bar"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 642
    .local v11, "searchId":I
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getId()I

    move-result v17

    move/from16 v0, v17

    if-ne v11, v0, :cond_0

    .line 645
    :cond_0
    new-instance v17, Lcom/zte/mifavor/actionbar/ActivityCommon$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/zte/mifavor/actionbar/ActivityCommon$3;-><init>(Lcom/zte/mifavor/actionbar/ActivityCommon;II)V

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 662
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 663
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    .line 664
    .local v15, "viewchild":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v15, v1, v2}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 662
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 669
    .end local v7    # "i":I
    .end local v11    # "searchId":I
    .end local v15    # "viewchild":Landroid/view/View;
    .end local v16    # "vp":Landroid/view/ViewGroup;
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 670
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v13, :cond_2

    move-object/from16 v17, p1

    .line 675
    check-cast v17, Landroid/widget/ImageView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 677
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_2

    .line 678
    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 679
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 707
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 683
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, p1

    .line 685
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v14, p1

    .line 686
    check-cast v14, Landroid/widget/TextView;

    .line 687
    .local v14, "tv":Landroid/widget/TextView;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "search_src_text"

    const-string v19, "id"

    const-string v20, "android"

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 689
    .restart local v11    # "searchId":I
    invoke-virtual {v14}, Landroid/widget/TextView;->getId()I

    move-result v17

    move/from16 v0, v17

    if-ne v11, v0, :cond_4

    move-object/from16 v17, p1

    .line 690
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/zte/extres/R$color;->mfv_common_acb_tf_txt:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v17, p1

    .line 692
    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/zte/extres/R$color;->mfv_common_acb_tf_txt_watermark:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setHintTextColor(I)V

    :cond_4
    move-object/from16 v17, p1

    .line 696
    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 697
    .local v5, "dras":[Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    aget-object v17, v5, v17

    if-eqz v17, :cond_2

    .line 698
    const/16 v17, 0x0

    aget-object v17, v5, v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 699
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    const/16 v17, 0x0

    aget-object v17, v5, v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method public setAllViewColor(Landroid/view/View;II)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I
    .param p3, "textColor"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 586
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    move-object v5, p1

    .line 587
    check-cast v5, Landroid/view/ViewGroup;

    .line 588
    .local v5, "vp":Landroid/view/ViewGroup;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "search_bar"

    const-string v8, "id"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 590
    .local v3, "searchId":I
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    if-ne v3, v6, :cond_0

    .line 594
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 595
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 596
    .local v4, "viewchild":Landroid/view/View;
    invoke-virtual {p0, v4, p2, p3}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 601
    .end local v2    # "i":I
    .end local v3    # "searchId":I
    .end local v4    # "viewchild":Landroid/view/View;
    .end local v5    # "vp":Landroid/view/ViewGroup;
    :cond_1
    instance-of v6, p1, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    move-object v6, p1

    .line 602
    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 604
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 605
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 606
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_1
    return-void

    .line 609
    .restart local p1    # "view":Landroid/view/View;
    :cond_3
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    move-object v6, p1

    .line 611
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setTextColor(I)V

    move-object v6, p1

    .line 613
    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 614
    .local v0, "dras":[Landroid/graphics/drawable/Drawable;
    aget-object v6, v0, v7

    if-eqz v6, :cond_2

    .line 615
    aget-object v6, v0, v7

    invoke-virtual {v6, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 616
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    aget-object v6, v0, v7

    invoke-virtual {p1, v6, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->getOriginHasActionBar()Z

    move-result v1

    .line 269
    .local v1, "hasActionbar":Z
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    if-nez v2, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->installDecor()V

    .line 272
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    invoke-virtual {v2, v1}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->setActionbarViewVisible(Z)V

    .line 273
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    sget v3, Lcom/zte/extres/R$id;->content:I

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 274
    .local v0, "content":Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 275
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->onContentChanged()V

    .line 277
    iget-object v2, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mDecor:Lcom/zte/mifavor/actionbar/ActionBarOverlayLayout;

    return-object v2
.end method

.method public setHasActionBar(Z)V
    .locals 1
    .param p1, "has"    # Z

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mHasActionbar:I

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mHasActionbar:I

    goto :goto_0
.end method

.method public setIndicatorColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 527
    move v0, p1

    .line 528
    .local v0, "themeColor":I
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 529
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 538
    :goto_0
    invoke-virtual {p0}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setInitActionBarContentColor()V

    .line 539
    return-void

    .line 532
    :cond_0
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 535
    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0
.end method

.method public setInitActionBarContentColor()V
    .locals 3

    .prologue
    .line 542
    iget v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->initActionBarFlag:I

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/zte/extres/R$color;->mfv_common_acb_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/zte/mifavor/actionbar/ActivityCommon;->setActionBarContentColor(II)V

    .line 548
    :cond_0
    return-void
.end method

.method public setOriginHasActionbar(Z)V
    .locals 1
    .param p1, "has"    # Z

    .prologue
    .line 218
    if-eqz p1, :cond_0

    .line 219
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    .line 223
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mOriginHasActionbar:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 294
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/zte/mifavor/actionbar/ActivityCommon;->mActionBar:Lcom/zte/mifavor/actionbar/ActionbarImpl;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/actionbar/ActionbarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
