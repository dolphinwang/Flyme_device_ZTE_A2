.class Lcom/android/mipop/paintpad/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/paintpad/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$4;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$4;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->menuSwitch()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$600(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    .line 440
    return-void
.end method
