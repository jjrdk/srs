<?xml version="1.0"?>
<xsl:stylesheet
  version="1.0"
  xmlns:spec="urn:kherge:specification"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

  <!-- Render all of the use-cases. -->
  <xsl:template match="spec:use-cases">
    <h2 id="_use_cases">Use Cases</h2>
    <xsl:apply-templates/>
    <div class="page-break"/>
  </xsl:template>

  <!-- Render each use case as a table. -->
  <xsl:template match="spec:use-cases/spec:use-case">
    <div class="panel panel-default use-case" id="{./spec:number}">
      <div class="panel-heading">
        <h4 class="panel-title">
          <span class="number">
            <xsl:value-of select="./spec:number"/>
          </span>
          <xsl:value-of select="./spec:name"/>
        </h4>
      </div>
      <table class="table table-bordered">
        <tbody>
          <xsl:apply-templates/>
        </tbody>
      </table>
    </div>
  </xsl:template>

  <!-- Ignore the name and number. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:number"/>
  <xsl:template match="spec:use-cases/spec:use-case/spec:name"/>

  <!-- Render the summary as a table row. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:summary">
    <tr>
      <th>Summary</th>
      <td>
        <xsl:apply-templates mode="copy"/>
      </td>
    </tr>
  </xsl:template>

  <!-- Render the rationale as a table row. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:rationale">
    <tr>
      <th>Rationale</th>
      <td>
        <xsl:apply-templates mode="copy"/>
      </td>
    </tr>
  </xsl:template>

  <!-- Render the users as list within a table row. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:users">
    <tr>
      <th>Users</th>
      <td>
        <ul>
          <xsl:apply-templates/>
        </ul>
      </td>
    </tr>
  </xsl:template>

  <!-- Render the user entry as a list item. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:users/spec:user">
    <li>
      <xsl:apply-templates mode="copy"/>
    </li>
  </xsl:template>

  <!-- Render the preconditions as a table row. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:preconditions">
    <tr>
      <th>Preconditions</th>
      <td>
        <xsl:apply-templates mode="copy"/>
      </td>
    </tr>
  </xsl:template>

  <!-- Render the basic course of events as a list in a table row. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:basic-events">
    <tr>
      <th>Basic Course of Events</th>
      <td>
        <ol>
          <xsl:apply-templates/>
        </ol>
      </td>
    </tr>
  </xsl:template>

  <!-- Render an event as a list item. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:basic-events/spec:event">
    <li>
      <xsl:apply-templates mode="copy"/>
    </li>
  </xsl:template>

  <!-- Render the alternative paths as a list in a table row. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:alternative-paths">
    <tr>
      <th>Alternative Paths</th>
      <td>
        <ol>
          <xsl:apply-templates/>
        </ol>
      </td>
    </tr>
  </xsl:template>

  <!-- Render an alternative path as a list item. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:alternative-paths/spec:path">
    <li>
      <xsl:apply-templates mode="copy"/>
    </li>
  </xsl:template>

  <!-- Render the postconditions as a table row. -->
  <xsl:template match="spec:use-cases/spec:use-case/spec:postconditions">
    <tr>
      <th>Postconditions</th>
      <td>
        <xsl:apply-templates mode="copy"/>
      </td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
