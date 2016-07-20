.class final Lcom/zte/zgesture/setting/RadioPreference$SavedState$1;
.super Ljava/lang/Object;
.source "RadioPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zgesture/setting/RadioPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/zte/zgesture/setting/RadioPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zte/zgesture/setting/RadioPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 234
    new-instance v0, Lcom/zte/zgesture/setting/RadioPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/zte/zgesture/setting/RadioPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/zte/zgesture/setting/RadioPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zte/zgesture/setting/RadioPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zte/zgesture/setting/RadioPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 238
    new-array v0, p1, [Lcom/zte/zgesture/setting/RadioPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lcom/zte/zgesture/setting/RadioPreference$SavedState$1;->newArray(I)[Lcom/zte/zgesture/setting/RadioPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
