.class public abstract Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;
.super Landroid/os/Binder;
.source "IGoodixFingerPrintService.java"

# interfaces
.implements Lcom/android/fingerprint/IGoodixFingerPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fingerprint/IGoodixFingerPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/fingerprint/IGoodixFingerPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.fingerprint.IGoodixFingerPrintService"

.field static final TRANSACTION_cancelEnroll:I = 0x2

.field static final TRANSACTION_cancelVerify:I = 0x4

.field static final TRANSACTION_deleteFingerPrint:I = 0x5

.field static final TRANSACTION_deleteFingerPrintList:I = 0x6

.field static final TRANSACTION_driverTest:I = 0x9

.field static final TRANSACTION_engTest:I = 0xa

.field static final TRANSACTION_getFingPrintIdList:I = 0x7

.field static final TRANSACTION_getNameById:I = 0xe

.field static final TRANSACTION_registerReceiver:I = 0xb

.field static final TRANSACTION_saveFingerPrint:I = 0x8

.field static final TRANSACTION_setFingerprintUnlock:I = 0x11

.field static final TRANSACTION_setIdName:I = 0xd

.field static final TRANSACTION_startCmd:I = 0x10

.field static final TRANSACTION_startEnroll:I = 0x1

.field static final TRANSACTION_startVerify:I = 0x3

.field static final TRANSACTION_unregisterReceiver:I = 0xc

.field static final TRANSACTION_updateTA:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p0, p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/fingerprint/IGoodixFingerPrintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/fingerprint/IGoodixFingerPrintService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/fingerprint/IGoodixFingerPrintService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 50
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->startEnroll(Landroid/os/IBinder;)I

    move-result v2

    .line 51
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 57
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :sswitch_2
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 60
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->cancelEnroll(Landroid/os/IBinder;)I

    move-result v2

    .line 61
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 67
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :sswitch_3
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 71
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 72
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->startVerify(Landroid/os/IBinder;[I)I

    move-result v2

    .line 73
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":I
    :sswitch_4
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 82
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->cancelVerify(Landroid/os/IBinder;)I

    move-result v2

    .line 83
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :sswitch_5
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->deleteFingerPrint(Landroid/os/IBinder;I)I

    move-result v2

    .line 95
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 101
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_6
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 105
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 106
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->deleteFingerPrintList(Landroid/os/IBinder;[I)I

    move-result v2

    .line 107
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 113
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":[I
    .end local v2    # "_result":I
    :sswitch_7
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 116
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->getFingPrintIdList(Landroid/os/IBinder;)[I

    move-result-object v2

    .line 117
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 123
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":[I
    :sswitch_8
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 126
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->saveFingerPrint(Landroid/os/IBinder;)I

    move-result v2

    .line 127
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 133
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :sswitch_9
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 136
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->driverTest(Landroid/os/IBinder;)I

    move-result v2

    .line 137
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 143
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :sswitch_a
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 147
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 148
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->engTest(Landroid/os/IBinder;I)I

    move-result v2

    .line 149
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 155
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_b
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 159
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;

    move-result-object v1

    .line 160
    .local v1, "_arg1":Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;
    invoke-virtual {p0, v0, v1}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->registerReceiver(Landroid/os/IBinder;Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 166
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/fingerprint/IGoodixFingerPrintServiceReceiver;
    :sswitch_c
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 169
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->unregisterReceiver(Landroid/os/IBinder;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 175
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_d
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 179
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->setIdName(ILjava/lang/String;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 186
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_e
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 189
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->getNameById(I)Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    .end local v0    # "_arg0":I
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->updateTA(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 202
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 208
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_10
    const-string v3, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 211
    .local v0, "_arg0":[B
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->startCmd([B)[B

    move-result-object v2

    .line 212
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_0

    .line 218
    .end local v0    # "_arg0":[B
    .end local v2    # "_result":[B
    :sswitch_11
    const-string v5, "com.android.fingerprint.IGoodixFingerPrintService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v4

    .line 221
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/fingerprint/IGoodixFingerPrintService$Stub;->setFingerprintUnlock(Z)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v3

    .line 220
    goto :goto_1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
