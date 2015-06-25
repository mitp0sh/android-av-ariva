.class final Lcom/avira/android/antivirus/b;
.super Lcom/avira/android/antivirus/bk;
.source "SourceFile"


# static fields
.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/Antivirus;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/avira/android/antivirus/Antivirus;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 746
    iput-object p1, p0, Lcom/avira/android/antivirus/b;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-direct {p0}, Lcom/avira/android/antivirus/bk;-><init>()V

    .line 747
    iput-object p2, p0, Lcom/avira/android/antivirus/b;->b:Ljava/lang/String;

    .line 748
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 756
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 757
    const/4 v1, 0x0

    .line 761
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/antivirus/b;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 768
    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v3, "/system"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    :cond_0
    :goto_1
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 765
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v3

    const-string v4, "AV"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unable to get package info for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/avira/android/antivirus/b;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 773
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 774
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v1}, Lcom/avira/android/antivirus/OnAccessScanService;->a(Ljava/lang/String;)V

    .line 777
    iget-object v2, p0, Lcom/avira/android/antivirus/b;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$200(Lcom/avira/android/antivirus/Antivirus;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 778
    iget-object v2, p0, Lcom/avira/android/antivirus/b;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mAccessScannerRunnableQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$300(Lcom/avira/android/antivirus/Antivirus;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 780
    const-string v3, "application_name"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v1, "application_path"

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 783
    const/16 v3, 0x3e8

    iput v3, v1, Landroid/os/Message;->what:I

    .line 784
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 785
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/ApplicationService;->t()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 786
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/avira/android/antivirus/b;->a(J)V

    .line 787
    invoke-virtual {p0}, Lcom/avira/android/antivirus/b;->j()V

    .line 788
    iget-object v1, p0, Lcom/avira/android/antivirus/b;->a:Lcom/avira/android/antivirus/Antivirus;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/avira/android/antivirus/b;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mAccessScanContextPointer:J
    invoke-static {v2}, Lcom/avira/android/antivirus/Antivirus;->access$400(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v2

    # invokes: Lcom/avira/android/antivirus/Antivirus;->scan(Ljava/lang/String;J)I
    invoke-static {v1, v0, v2, v3}, Lcom/avira/android/antivirus/Antivirus;->access$500(Lcom/avira/android/antivirus/Antivirus;Ljava/lang/String;J)I

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/avira/android/antivirus/b;->b(J)V

    .line 793
    invoke-virtual {p0}, Lcom/avira/android/antivirus/b;->o()V

    .line 795
    sget-object v0, Lcom/avira/android/antivirus/e;->ON_ACCESS:Lcom/avira/android/antivirus/e;

    invoke-virtual {p0, v0}, Lcom/avira/android/antivirus/b;->a(Lcom/avira/android/antivirus/e;)V

    .line 796
    iget-object v0, p0, Lcom/avira/android/antivirus/b;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mAccessScannerRunnableQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static {v0}, Lcom/avira/android/antivirus/Antivirus;->access$300(Lcom/avira/android/antivirus/Antivirus;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 798
    iget-object v0, p0, Lcom/avira/android/antivirus/b;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/avira/android/antivirus/Antivirus;->access$200(Lcom/avira/android/antivirus/Antivirus;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 800
    invoke-static {}, Lcom/avira/android/antivirus/OnAccessScanService;->a()V

    .line 803
    invoke-virtual {p0}, Lcom/avira/android/antivirus/b;->n()V

    goto/16 :goto_1
.end method
