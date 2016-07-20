.class Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$1;
.super Ljava/lang/Object;
.source "AnimActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->play(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;I)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$1;->this$0:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    iput p2, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$1;->val$number:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$1;->this$0:Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;

    iget v1, p0, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation$1;->val$number:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/ui/AnimActivity$FrameAnimation;->play(I)V

    .line 186
    return-void
.end method
