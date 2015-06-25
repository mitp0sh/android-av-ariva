.class public Lcom/avira/applock/common/web/HttpErrorResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public errorCode:I

.field public errorMsg:Ljava/lang/String;

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->status:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->status:Ljava/lang/String;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    .line 43
    iput p1, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    .line 44
    iput-object p2, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->status:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/applock/common/web/HttpErrorResponse;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
