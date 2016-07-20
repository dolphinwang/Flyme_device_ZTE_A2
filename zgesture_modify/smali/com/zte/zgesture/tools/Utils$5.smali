.class final Lcom/zte/zgesture/tools/Utils$5;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/tools/Utils;->sendRightMusicKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 239
    :try_start_0
    new-instance v1, Landroid/app/Instrumentation;

    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 240
    .local v1, "inst":Landroid/app/Instrumentation;
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x57

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 241
    .local v2, "mKeyEvent":Landroid/view/KeyEvent;
    const v3, 0xffff

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setSource(I)V

    .line 242
    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V

    .line 244
    new-instance v1, Landroid/app/Instrumentation;

    .end local v1    # "inst":Landroid/app/Instrumentation;
    invoke-direct {v1}, Landroid/app/Instrumentation;-><init>()V

    .line 245
    .restart local v1    # "inst":Landroid/app/Instrumentation;
    new-instance v2, Landroid/view/KeyEvent;

    .end local v2    # "mKeyEvent":Landroid/view/KeyEvent;
    const/4 v3, 0x1

    const/16 v4, 0x57

    invoke-direct {v2, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 246
    .restart local v2    # "mKeyEvent":Landroid/view/KeyEvent;
    const v3, 0xffff

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setSource(I)V

    .line 247
    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->sendKeySync(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    .end local v1    # "inst":Landroid/app/Instrumentation;
    .end local v2    # "mKeyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "GestureMotionUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendRighttMusicKey: Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/zte/zgesture/tools/GLog;->error(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
