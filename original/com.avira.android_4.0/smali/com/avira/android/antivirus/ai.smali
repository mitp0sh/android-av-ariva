.class final Lcom/avira/android/antivirus/ai;
.super Lcom/avira/android/utilities/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/OEScanResultActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/avira/android/antivirus/ai;->a:Lcom/avira/android/antivirus/OEScanResultActivity;

    invoke-direct {p0}, Lcom/avira/android/utilities/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 81
    if-lez p1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/avira/android/antivirus/ai;->a:Lcom/avira/android/antivirus/OEScanResultActivity;

    invoke-static {v0}, Lcom/avira/android/antivirus/OEScanResultActivity;->a(Lcom/avira/android/antivirus/OEScanResultActivity;)Lcom/avira/android/antivirus/OEScanResultActivityPresenter;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/avira/android/antivirus/OEScanResultActivityPresenter;->b(I)V

    .line 89
    :cond_0
    return-void
.end method
