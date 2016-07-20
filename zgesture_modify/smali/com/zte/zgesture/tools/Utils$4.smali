.class final Lcom/zte/zgesture/tools/Utils$4;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/tools/Utils;->sendLeftMusicKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 219
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 220
    .local v1, "inst":Landroid/app/Instrumentation;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x58

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 221
    .local v2, "mKeyEvent":Landroid/view/KeyEvent;
    const v3, 0xffff

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setSource(I)V

    .line 222
    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 224
    new-instance v1, Landroid/app/Instrumentation;

    .end local v1    # "inst":Landroid/app/Instrumentation;
    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 225
    .restart local v1    # "inst":Landroid/app/Instrumentation;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "mKeyEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x1

    const/16 v4, 0x58

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 226
    .restart local v2    # "mKeyEvent":Landroid/view/KeyEvent;
    const v3, 0xffff

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setSource(I)V

    .line 227
    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    .end local v1    # "inst":Landroid/app/Instrumentation;
    .end local v2    # "mKeyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "GestureMotionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendLeftMusicKey: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
