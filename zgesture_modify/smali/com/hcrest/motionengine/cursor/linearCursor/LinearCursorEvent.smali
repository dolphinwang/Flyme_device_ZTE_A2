.class public Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;
.super Lcom/hcrest/sensors/MotionEngineEvent;
.source "LinearCursorEvent.java"


# static fields
.field public static final TYPE_LINEARCURSOR:Ljava/lang/String; = "linearcursor"

.field private static final serialVersionUID:J = -0x41b980966732c055L


# instance fields
.field private normal:Lcom/hcrest/sensors/util/Vector3D;

.field private path:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field private rawPath:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation
.end field

.field public vectors:[Lcom/hcrest/sensors/util/Vector3D;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 45
    const-string v0, "linearcursor"

    invoke-direct {p0, p1, v0}, Lcom/hcrest/sensors/MotionEngineEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getNormal()Lcom/hcrest/sensors/util/Vector3D;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->normal:Lcom/hcrest/sensors/util/Vector3D;

    return-object v0
.end method

.method public getPath()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->path:Ljava/util/Vector;

    return-object v0
.end method

.method public getRawPath()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->rawPath:Ljava/util/Vector;

    return-object v0
.end method

.method public setNormal(Lcom/hcrest/sensors/util/Vector3D;)V
    .locals 0
    .param p1, "normal"    # Lcom/hcrest/sensors/util/Vector3D;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->normal:Lcom/hcrest/sensors/util/Vector3D;

    .line 100
    return-void
.end method

.method public setPath(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "path":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    iput-object p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->path:Ljava/util/Vector;

    .line 64
    return-void
.end method

.method public setRawPath(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/hcrest/sensors/util/Vector3D;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "rawPath":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/hcrest/sensors/util/Vector3D;>;"
    iput-object p1, p0, Lcom/hcrest/motionengine/cursor/linearCursor/LinearCursorEvent;->rawPath:Ljava/util/Vector;

    .line 82
    return-void
.end method
