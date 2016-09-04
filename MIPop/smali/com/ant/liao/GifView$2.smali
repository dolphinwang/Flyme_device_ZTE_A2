.class synthetic Lcom/ant/liao/GifView$2;
.super Ljava/lang/Object;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ant/liao/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ant$liao$GifView$GifImageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 277
    invoke-static {}, Lcom/ant/liao/GifView$GifImageType;->values()[Lcom/ant/liao/GifView$GifImageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ant/liao/GifView$2;->$SwitchMap$com$ant$liao$GifView$GifImageType:[I

    :try_start_0
    sget-object v0, Lcom/ant/liao/GifView$2;->$SwitchMap$com$ant$liao$GifView$GifImageType:[I

    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->WAIT_FINISH:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/ant/liao/GifView$2;->$SwitchMap$com$ant$liao$GifView$GifImageType:[I

    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->COVER:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/ant/liao/GifView$2;->$SwitchMap$com$ant$liao$GifView$GifImageType:[I

    sget-object v1, Lcom/ant/liao/GifView$GifImageType;->SYNC_DECODER:Lcom/ant/liao/GifView$GifImageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
