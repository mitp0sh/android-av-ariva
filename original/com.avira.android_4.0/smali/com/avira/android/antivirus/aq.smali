.class final Lcom/avira/android/antivirus/aq;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/OEScanResultDialogActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultDialogActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/avira/android/antivirus/aq;->a:Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/avira/android/antivirus/aq;->a:Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->finish()V

    .line 87
    return-void
.end method
