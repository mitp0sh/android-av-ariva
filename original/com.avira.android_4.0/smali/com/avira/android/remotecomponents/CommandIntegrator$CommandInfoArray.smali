.class public Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 563
    new-instance v0, Lcom/avira/android/remotecomponents/c;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/c;-><init>()V

    sput-object v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b:Ljava/util/concurrent/Semaphore;

    .line 584
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    .line 585
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    .line 531
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b:Ljava/util/concurrent/Semaphore;

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 533
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 536
    new-instance v3, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;

    invoke-direct {v3}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;-><init>()V

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a(Ljava/lang/String;)V

    .line 538
    iget-object v4, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v4, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0, p1}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 677
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 635
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 604
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 605
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;

    .line 606
    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :goto_0
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 624
    :goto_1
    return-void

    .line 612
    :cond_0
    :try_start_1
    new-instance v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;

    invoke-direct {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;-><init>()V

    .line 613
    invoke-virtual {v0, p2}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a(Ljava/lang/String;)V

    .line 614
    iget-object v1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 619
    :try_start_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "CommandIntegrator.putValue"

    const-string v3, "InterruptedException"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    throw v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;

    .line 652
    const-string v1, ""

    .line 653
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 551
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-object v0, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 554
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfoArray;->a:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;

    invoke-virtual {v0}, Lcom/avira/android/remotecomponents/CommandIntegrator$CommandInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 557
    :cond_0
    return-void
.end method
