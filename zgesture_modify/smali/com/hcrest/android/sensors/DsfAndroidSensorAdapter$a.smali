.class Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;

.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/io/InputStreamReader;

.field private d:Ljava/io/InputStream;

.field private e:J

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/hcrest/sensors/SensorType;",
            ">;"
        }
    .end annotation
.end field

.field private g:J


# direct methods
.method private constructor <init>(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;)V
    .locals 2

    .prologue
    .line 467
    iput-object p1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->a:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 472
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->f:Landroid/util/SparseArray;

    .line 473
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->g:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$1;)V
    .locals 0

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;-><init>(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/io/InputStream;)Ljava/lang/Void;
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 482
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->d:Ljava/io/InputStream;

    .line 486
    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->d:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->c:Ljava/io/InputStreamReader;

    .line 487
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->c:Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    .line 489
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 490
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 491
    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 492
    const-string v1, "^! "

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 493
    const-string v4, "initialtime"

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->g:J

    .line 497
    :cond_1
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    invoke-static {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->fromString(Ljava/lang/String;)Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;

    move-result-object v1

    .line 500
    if-eqz v1, :cond_2

    .line 501
    iget-object v4, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->f:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->getSensorIndex()I

    move-result v5

    invoke-virtual {v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureHeader;->getSensorType()Lcom/hcrest/sensors/SensorType;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 504
    :cond_2
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->f:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->fromString(Ljava/lang/String;Landroid/util/SparseArray;)Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;

    move-result-object v4

    .line 506
    invoke-virtual {v4}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->getTimestamp()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->g:J

    add-long/2addr v0, v6

    invoke-virtual {v4, v0, v1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->setTimestamp(J)V

    .line 508
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->a:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;

    invoke-static {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->a(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    iget-wide v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->e:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 511
    invoke-virtual {v4}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->getTimestamp()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->e:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 513
    :goto_1
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 515
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;

    const/4 v1, 0x0

    aput-object v4, v0, v1

    invoke-virtual {p0, v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->publishProgress([Ljava/lang/Object;)V

    .line 516
    invoke-virtual {v4}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->getTimestamp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->e:J
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 522
    :try_start_1
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    :try_start_2
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 530
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->c:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 531
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 536
    :goto_2
    const/4 v0, 0x0

    return-object v0

    .line 529
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 530
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->c:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 531
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 532
    :catch_1
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 532
    :catch_2
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 523
    :catch_3
    move-exception v0

    .line 524
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 529
    :try_start_5
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 530
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->c:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 531
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 532
    :catch_4
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 525
    :catch_5
    move-exception v0

    .line 526
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 529
    :try_start_7
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 530
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->c:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 531
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 532
    :catch_6
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 528
    :catchall_0
    move-exception v0

    .line 529
    :try_start_8
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->d:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 530
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->c:Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 531
    iget-object v1, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->b:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 534
    :goto_3
    throw v0

    .line 532
    :catch_7
    move-exception v1

    .line 533
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_5
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->a:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;

    invoke-static {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->b(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;

    .line 542
    invoke-virtual {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->d()V

    goto :goto_0

    .line 544
    :cond_0
    return-void
.end method

.method protected varargs a([Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;)V
    .locals 10

    .prologue
    .line 548
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p1, v1

    .line 549
    iget-object v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->a:Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;

    invoke-static {v0}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;->b(Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;

    .line 550
    invoke-virtual {v3}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->getSensorType()Lcom/hcrest/sensors/SensorType;

    move-result-object v5

    invoke-virtual {v3}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->getValues()[F

    move-result-object v6

    invoke-virtual {v3}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;->getTimestamp()J

    move-result-wide v8

    invoke-virtual {v0, v5, v6, v8, v9}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$b;->a(Lcom/hcrest/sensors/SensorType;[FJ)V

    goto :goto_1

    .line 548
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 555
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 467
    check-cast p1, [Ljava/io/InputStream;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->a([Ljava/io/InputStream;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 467
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 477
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->e:J

    .line 478
    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 467
    check-cast p1, [Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$a;->a([Lcom/hcrest/android/sensors/DsfAndroidSensorAdapter$SensorCaptureData;)V

    return-void
.end method
