.class final Lcom/avira/android/antivirus/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/Antivirus;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/Antivirus;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/avira/android/antivirus/a;->a:Lcom/avira/android/antivirus/Antivirus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/avira/android/antivirus/a;->a:Lcom/avira/android/antivirus/Antivirus;

    iget-object v1, p0, Lcom/avira/android/antivirus/a;->a:Lcom/avira/android/antivirus/Antivirus;

    # getter for: Lcom/avira/android/antivirus/Antivirus;->mDemandScanContextPointer:J
    invoke-static {v1}, Lcom/avira/android/antivirus/Antivirus;->access$000(Lcom/avira/android/antivirus/Antivirus;)J

    move-result-wide v2

    # invokes: Lcom/avira/android/antivirus/Antivirus;->abortScanning(J)I
    invoke-static {v0, v2, v3}, Lcom/avira/android/antivirus/Antivirus;->access$100(Lcom/avira/android/antivirus/Antivirus;J)I

    .line 378
    return-void
.end method
