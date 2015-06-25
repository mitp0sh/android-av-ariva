.class final Lcom/avira/android/antivirus/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/custom/m;


# instance fields
.field final synthetic a:Lcom/avira/android/antivirus/OEScanResultDialogActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/antivirus/OEScanResultDialogActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/avira/android/antivirus/at;->a:Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/avira/android/antivirus/at;->a:Lcom/avira/android/antivirus/OEScanResultDialogActivity;

    invoke-virtual {v0}, Lcom/avira/android/antivirus/OEScanResultDialogActivity;->finish()V

    .line 165
    return-void
.end method
