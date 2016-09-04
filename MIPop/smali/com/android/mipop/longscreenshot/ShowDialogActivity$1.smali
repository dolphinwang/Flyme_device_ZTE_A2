.class Lcom/android/mipop/longscreenshot/ShowDialogActivity$1;
.super Ljava/lang/Object;
.source "ShowDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/longscreenshot/ShowDialogActivity;->showProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/longscreenshot/ShowDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/longscreenshot/ShowDialogActivity;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/mipop/longscreenshot/ShowDialogActivity$1;->this$0:Lcom/android/mipop/longscreenshot/ShowDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 41
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/mipop/longscreenshot/ShowDialogActivity$1;->this$0:Lcom/android/mipop/longscreenshot/ShowDialogActivity;

    invoke-virtual {v0}, Lcom/android/mipop/longscreenshot/ShowDialogActivity;->finish()V

    .line 44
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
