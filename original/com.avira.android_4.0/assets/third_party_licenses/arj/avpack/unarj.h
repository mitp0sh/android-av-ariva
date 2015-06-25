http://www.arjsoftware.com/files.htm
/* UNARJ.H, UNARJ, R JUNG, 07/29/96
 * Include file
 * Copyright (c) 1990-97 ARJ Software, Inc.  All rights reserved.
 *
 *   This code may be freely used in programs that are NOT ARJ archivers
 *   (both compress and extract ARJ archives).
 *
 *   If you wish to distribute a modified version of this program, you
 *   MUST indicate that it is a modified version both in the program and
 *   source code.
 *
 *   If you modify this program, we would appreciate a copy of the new
 *   source code.  we are holding the copyright on the source code, so
 *   please do not delete our name from the program files or from the
 *   documentation.
 *
 * Modification history:
 * Date      Programmer  Description of modification.
 * 04/05/91  R. Jung     Rewrote code.
 * 04/23/91  M. Adler    Portabilized.
 * 04/29/91  R. Jung     Added volume label support.
 * 05/30/91  R. Jung     Added SEEK_END definition.
 * 06/03/91  R. Jung     Changed arguments in get_mode_str() and
 *                       set_ftime_mode().
 * 06/28/91  R. Jung     Added new HOST OS numbers.
 * 07/08/91  R. Jung     Added default_case_path() and strlower().
 * 07/21/91  R. Jung     Fixed #endif _QC comment.
 * 08/27/91  R. Jung     Added #ifdef for COHERENT.
 * 09/01/91  R. Jung     Added new host names.
 * 12/03/91  R. Jung     Added BACKUP_FLAG.
 * 04/06/92  R. Jung     Added ARCHIMEDES.
 * 02/17/93  R. Jung     Improved ARJ header information.  Added ARJ_M_VERSION.
 * 01/22/94  R. Jung     Changed copyright message.
 * 07/29/96  R. Jung     Added "/" to list of path separators.
 *
 */

/* ATTENTION THIS IS A VERSION MODIFIED BY H+BEDV Datentechnik GmbH */ 


