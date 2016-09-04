.class Lcom/android/mipop/cropimage/MenuActivity$3$1;
.super Ljava/lang/Thread;
.source "MenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/cropimage/MenuActivity$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mipop/cropimage/MenuActivity$3;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity$3;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/mipop/cropimage/MenuActivity$3$1;->this$1:Lcom/android/mipop/cropimage/MenuActivity$3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 115
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 116
    .local v1, "inst":Landroid/app/Instrumentation;
    const/16 v2, 0x1a

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .end local v1    # "inst":Landroid/app/Instrumentation;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Input"

    const-string v3, "DeadOjbectException"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
