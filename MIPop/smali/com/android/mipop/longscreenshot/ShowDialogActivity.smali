.class public Lcom/android/mipop/longscreenshot/ShowDialogActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ShowDialogActivity.java"


# static fields
.field public static sProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/android/mipop/longscreenshot/ShowDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mipop/longscreenshot/ShowDialogActivity$2;-><init>(Lcom/android/mipop/longscreenshot/ShowDialogActivity;)V

    iput-object v0, p0, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "dismiss_Dialog"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->finish()V

    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->showProgressDialog()V

    .line 25
    invoke-direct {p0}, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->initReceiver()V

    .line 26
    return-void
.end method

.method public showProgressDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 29
    const v3, 0x7f090593

    invoke-virtual {p0, v3}, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f090594

    invoke-virtual {p0, v3}, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "msg":Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    .line 32
    sget-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 33
    sget-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    sget-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 35
    sget-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 36
    sget-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 37
    new-instance v0, Lcom/android/mipop/longscreenshot/ShowDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mipop/longscreenshot/ShowDialogActivity$1;-><init>(Lcom/android/mipop/longscreenshot/ShowDialogActivity;)V

    .line 47
    .local v0, "keyListener":Landroid/content/DialogInterface$OnKeyListener;
    sget-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 48
    sget-object v3, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->sProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 49
    return-void
.end method
