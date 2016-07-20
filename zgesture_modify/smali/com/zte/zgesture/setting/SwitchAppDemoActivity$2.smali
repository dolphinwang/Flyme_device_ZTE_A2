.class Lcom/zte/zgesture/setting/SwitchAppDemoActivity$2;
.super Landroid/widget/RelativeLayout;
.source "SwitchAppDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/SwitchAppDemoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/SwitchAppDemoActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/zte/zgesture/setting/SwitchAppDemoActivity$2;->this$0:Lcom/zte/zgesture/setting/SwitchAppDemoActivity;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method
