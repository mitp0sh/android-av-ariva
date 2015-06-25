.class final Lcom/avira/android/antivirus/as;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/data/a;

.field final synthetic b:Lcom/avira/android/antivirus/OEScanResultDialogActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultDialogActivity;Lcom/avira/android/antivirus/data/a;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/avira/android/antivirus/as;->b:Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    iput-object p2, p0, Lcom/avira/android/antivirus/as;->a:Lcom/avira/android/antivirus/data/a;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/avira/android/antivirus/as;->b:Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->finish()V

    .line 148
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 153
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    iget-object v0, p0, Lcom/avira/android/antivirus/as;->a:Lcom/avira/android/antivirus/data/a;

    invoke-interface {v0}, Lcom/avira/android/antivirus/data/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/a/c;->f(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/avira/android/antivirus/as;->b:Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->finish()V

    .line 155
    return-void
.end method
