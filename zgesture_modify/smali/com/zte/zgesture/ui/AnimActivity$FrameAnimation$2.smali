.class Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;
.super Ljava/lang/Object;
.source "AnimActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->play(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

.field final synthetic val$duration:I

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;II)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;->this$0:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    iput p2, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;->val$number:I

    iput p3, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;->this$0:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    iget v1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;->val$number:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$2;->val$duration:I

    invoke-virtual {v0, v1, v2}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->play(II)V

    .line 205
    return-void
.end method
