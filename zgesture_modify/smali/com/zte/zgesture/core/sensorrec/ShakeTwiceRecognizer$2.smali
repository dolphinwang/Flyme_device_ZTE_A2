.class Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$2;
.super Ljava/lang/Object;
.source "ShakeTwiceRecognizer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeCount:I
    invoke-static {v0, v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$002(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I

    .line 74
    iget-object v0, p0, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer$2;->this$0:Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;

    # setter for: Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->mShakeDirection:I
    invoke-static {v0, v1}, Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;->access$102(Lcom/zte/zgesture/core/sensorrec/ShakeTwiceRecognizer;I)I

    .line 75
    return-void
.end method
